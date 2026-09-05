import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/paseos_provider.dart';
import '../widgets/paseador_card.dart';

class FavoritosScreen extends StatelessWidget {
  const FavoritosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paseadores Favoritos'),
      ),
      body: Consumer<PaseosProvider>(
        builder: (context, provider, child) {
          final favoritos = provider.favoritos;

          if (favoritos.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_border, size: 60, color: Colors.grey),
                  SizedBox(height: 10),
                  Text(
                    'No tienes paseadores favoritos.',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: favoritos.length,
            itemBuilder: (context, index) {
              return PaseadorCard(paseador: favoritos[index]);
            },
          );
        },
      ),
    );
  }
}