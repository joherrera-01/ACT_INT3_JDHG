import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/paseo_model.dart';
import '../providers/paseos_provider.dart';

class PaseoCard extends StatelessWidget {
  final Paseo paseo;

  const PaseoCard({super.key, required this.paseo});

  void _confirmarCancelacion(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(
            'Confirmar cancelación',
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
          content: Text(
            '¿Estás seguro de que deseas cancelar el paseo de ${paseo.nombreMascota} con ${paseo.paseador.nombre}?',
            style: GoogleFonts.poppins(fontSize: 14),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: Text(
                'No, conservar',
                style: GoogleFonts.poppins(color: Colors.grey.shade700),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // Cierra el cuadro de diálogo
                Navigator.of(dialogContext).pop();

                // Elimina el paseo mediante Provider
                Provider.of<PaseosProvider>(context, listen: false)
                    .cancelarPaseo(paseo.id);

                // Muestra mensaje de confirmación
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Paseo cancelado con éxito'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              child: Text(
                'Sí, cancelar',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Avatar de la foto del paseador
            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.deepOrange.shade100,
              backgroundImage: NetworkImage(paseo.paseador.fotoUrl),
              child: paseo.paseador.fotoUrl.isEmpty
                  ? Text(
                      paseo.paseador.nombre[0],
                      style: const TextStyle(color: Colors.deepOrange),
                    )
                  : null,
            ),
            const SizedBox(width: 12),

            // Información principal del paseo
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Mascota: ${paseo.nombreMascota}',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Paseador: ${paseo.paseador.nombre}',
                    style: const TextStyle(fontSize: 13),
                  ),
                  Text(
                    'Duración: ${paseo.duracionHoras} hr(s)',
                    style: const TextStyle(fontSize: 12, color: Colors.black87),
                  ),
                  Text(
                    'Fecha: ${paseo.fechaHora.day}/${paseo.fechaHora.month}/${paseo.fechaHora.year} - ${paseo.fechaHora.hour}:${paseo.fechaHora.minute.toString().padLeft(2, '0')}',
                    style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),

            // Precio y botón para cancelar paseo (Lado derecho)
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$${paseo.costoTotal.toStringAsFixed(2)}',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                const SizedBox(height: 4),
                IconButton(
                  icon: const Icon(Icons.cancel_outlined, color: Colors.red, size: 22),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  tooltip: 'Cancelar paseo',
                  onPressed: () => _confirmarCancelacion(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}