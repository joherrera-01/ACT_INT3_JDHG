import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/paseo_model.dart';
import '../providers/paseos_provider.dart';

class PaseoCard extends StatelessWidget {
  final Paseo paseo;

  const PaseoCard({super.key, required this.paseo});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: Colors.deepOrange.shade100,
          backgroundImage: NetworkImage(paseo.paseador.fotoUrl),
          child: Text(
            paseo.paseador.nombre[0],
            style: const TextStyle(color: Colors.deepOrange),
          ),
        ),
        title: Text(
          'Mascota: ${paseo.nombreMascota}',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Paseador: ${paseo.paseador.nombre}'),
            Text('Duración: ${paseo.duracionHoras} hr(s)'),
            Text(
              'Fecha: ${paseo.fechaHora.day}/${paseo.fechaHora.month}/${paseo.fechaHora.year} - ${paseo.fechaHora.hour}:${paseo.fechaHora.minute.toString().padLeft(2, '0')}',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            IconButton(
              icon: const Icon(Icons.cancel_outlined, color: Colors.red, size: 20),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                Provider.of<PaseosProvider>(context, listen: false)
                    .cancelarPaseo(paseo.id);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Paseo cancelado'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}