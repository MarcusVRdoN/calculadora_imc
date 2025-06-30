import 'package:flutter/material.dart';
import 'screens/calculadora_imc_screen.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculadoraIMCScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}