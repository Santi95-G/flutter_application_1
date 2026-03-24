import 'package:flutter/material.dart';
import 'EjemploMenu.dart';  // Importamos el menú

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //  Aquí usamos el widget Myapp() de EjemploMenu.dart
      home: Myapp(), 
    );
  }
}