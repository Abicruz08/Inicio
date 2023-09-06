//import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'inicio.dart'; // Ajusta la ruta según la ubicación del archivo

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      home: Inicio(), // Utiliza una clase definida en inicio.dart
    );
  }
}
