import 'package:flutter/material.dart';
import 'categorias_imc_screen.dart';
import '../models/calculadora_imc.dart';
import '../widgets/seletor_genero.dart';

class ResultadoIMCScreen extends StatelessWidget {
  final double peso;
  final double altura;
  final String genero;

  ResultadoIMCScreen({super.key, 
    required this.peso,
    required this.altura,
    required this.genero,
  });

  @override
  Widget build(BuildContext context) {
    final double imc = CalculadoraIMC.calcular(peso, altura);
    final String categoria = CalculadoraIMC.obterCategoria(imc);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Text(
                        'Seu corpo',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.info_outline),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriasIMCScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Calculadora de IMC',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              SeletorGenero(
                generoSelecionado: genero,
                aoMudarGenero: (value) {},
                habilitado: false,
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Seu peso (kg)', style: TextStyle(color: Colors.grey)),
                      Text(
                        peso.toStringAsFixed(0),
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Sua altura (cm)', style: TextStyle(color: Colors.grey)),
                      Text(
                        altura.toStringAsFixed(0),
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 60),
              Text(
                'Seu IMC',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                imc.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                categoria,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Calcular IMC novamente',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}