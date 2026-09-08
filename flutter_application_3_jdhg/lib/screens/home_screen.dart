import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/paseadores_data.dart';
import '../widgets/app_logo.dart';
import '../widgets/paseador_card.dart'; 
import 'favoritos_screen.dart';
import 'mis_paseos_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final paseadores = PaseadoresData.paseadores;

    return Scaffold(
      appBar: AppBar(
        title: const Text('PaseoCanino 🐾'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FavoritosScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.assignment),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MisPaseosScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepOrange, Colors.orangeAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 25),
            child: Column(
              children: [
                const AppLogo(size: 85),
                const SizedBox(height: 12),
                Text(
                  '¡Hola, Bienvenid@!',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'El mejor cuidado para tu mejor amigo',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Colors.white.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: paseadores.length,
              itemBuilder: (context, index) {
                return PaseadorCard(paseador: paseadores[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}