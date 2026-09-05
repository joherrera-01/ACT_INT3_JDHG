import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/paseos_provider.dart';
import '../widgets/paseo_card.dart';

class MisPaseosScreen extends StatelessWidget {
  const MisPaseosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Paseos Reservados'),
      ),
      body: Consumer<PaseosProvider>(
        builder: (context, provider, child) {
          final paseos = provider.misPaseos;

          if (paseos.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.pets_outlined, size: 60, color: Colors.grey),
                  SizedBox(height: 10),
                  Text(
                    'No has agendado ningún paseo aún.',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: paseos.length,
            itemBuilder: (context, index) {
              return PaseoCard(paseo: paseos[index]);
            },
          );
        },
      ),
    );
  }
}