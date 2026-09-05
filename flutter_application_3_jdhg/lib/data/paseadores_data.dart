import '../models/paseador_model.dart';

class PaseadoresData {
  static final List<Paseador> paseadores = [
    Paseador(
      id: '1',
      nombre: 'Carlos Mendoza',
      fotoUrl: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=400&q=80',
      calificacion: 4.9,
      precioPorHora: 12.50,
      experiencia: '5 años cuidando y adiestrando perros de razas grandes.',
      telefono: '+593991234567',
      especialidades: ['Perros grandes', 'Adiestramiento', 'Paseos largos'],
    ),
    Paseador(
      id: '2',
      nombre: 'María José Torres',
      fotoUrl: 'https://images.unsplash.com/photo-1517841905240-472988babdf9?auto=format&fit=crop&w=400&q=80',
      calificacion: 4.8,
      precioPorHora: 10.00,
      experiencia: '3 años de experiencia con cachorros y perros medianos.',
      telefono: '+593998765432',
      especialidades: ['Cachorros', 'Juegos interactivos', 'Cuidado especial'],
    ),
    Paseador(
      id: '3',
      nombre: 'Andrés Villacís',
      fotoUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=400&q=80',
      calificacion: 4.7,
      precioPorHora: 15.00,
      experiencia: 'Veterinario en formación con 4 años como paseador profesional.',
      telefono: '+593995554433',
      especialidades: ['Primeros auxilios', 'Perros senior', 'Rutinas médicas'],
    ),
    Paseador(
      id: '4',
      nombre: 'Lucía Gómez',
      fotoUrl: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=400&q=80',
      calificacion: 5.0,
      precioPorHora: 14.00,
      experiencia: 'Especialista en grupos pequeños y socialización canina.',
      telefono: '+593991112233',
      especialidades: ['Socialización', 'Paseos grupales', 'Razas pequeñas'],
    ),
  ];
}