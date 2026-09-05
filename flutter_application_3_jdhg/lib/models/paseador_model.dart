class Paseador {
  final String id;
  final String nombre;
  final String fotoUrl;
  final double calificacion;
  final double precioPorHora;
  final String experiencia;
  final String telefono;
  final List<String> especialidades;

  Paseador({
    required this.id,
    required this.nombre,
    required this.fotoUrl,
    required this.calificacion,
    required this.precioPorHora,
    required this.experiencia,
    required this.telefono,
    required this.especialidades,
  });
}