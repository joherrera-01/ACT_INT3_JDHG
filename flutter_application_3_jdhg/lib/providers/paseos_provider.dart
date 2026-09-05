import 'package:flutter/material.dart';
import '../models/paseador_model.dart';
import '../models/paseo_model.dart';

class PaseosProvider extends ChangeNotifier {
  final List<Paseo> _misPaseos = [];
  final List<Paseador> _favoritos = [];

  List<Paseo> get misPaseos => List.unmodifiable(_misPaseos);
  List<Paseador> get favoritos => List.unmodifiable(_favoritos);

  bool esFavorito(Paseador paseador) {
    return _favoritos.any((p) => p.id == paseador.id);
  }

  void toggleFavorito(Paseador paseador) {
    if (esFavorito(paseador)) {
      _favoritos.removeWhere((p) => p.id == paseador.id);
    } else {
      _favoritos.add(paseador);
    }
    notifyListeners();
  }

  void agregarPaseo(Paseo paseo) {
    _misPaseos.add(paseo);
    notifyListeners();
  }

  void cancelarPaseo(String id) {
    _misPaseos.removeWhere((p) => p.id == id);
    notifyListeners();
  }
}