import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/paseador_model.dart';
import '../providers/paseos_provider.dart';
import '../screens/detalle_paseador_screen.dart';

class PaseadorCard extends StatelessWidget {
  final Paseador paseador;

  const PaseadorCard({super.key, required this.paseador});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetallePaseadorScreen(paseador: paseador),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  paseador.fotoUrl,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  errorBuilder: (ctx, err, stack) => Container(
                    width: 70,
                    height: 70,
                    color: Colors.deepOrange.shade100,
                    child: Center(
                      child: Text(
                        paseador.nombre.isNotEmpty ? paseador.nombre[0] : 'P',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      paseador.nombre,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 18),
                        const SizedBox(width: 4),
                        Text(
                          '${paseador.calificacion}',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '\$${paseador.precioPorHora.toStringAsFixed(2)} / hora',
                      style: GoogleFonts.poppins(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Consumer<PaseosProvider>(
                builder: (context, provider, child) {
                  final esFav = provider.esFavorito(paseador);
                  return IconButton(
                    icon: Icon(
                      esFav ? Icons.favorite : Icons.favorite_border,
                      color: esFav ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      provider.toggleFavorito(paseador);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}