import 'package:flutter/material.dart';

class CategoriasIMCScreen extends StatelessWidget {
  const CategoriasIMCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              SizedBox(height: 40),
              Center(
                child: Text(
                  'Categorias de IMC',
                  style: TextStyle(
                    fontSize: 22, // aumento sutil
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 40),
              _buildCategoriaItem('Menos de 18.5', 'você está abaixo do peso.'),
              SizedBox(height: 30),
              _buildCategoriaItem('18.5 a 24.9', 'você está normal.'),
              SizedBox(height: 30),
              _buildCategoriaItem('25 a 29.9', 'você está com sobrepeso.'),
              SizedBox(height: 30),
              _buildCategoriaItem('30 ou mais', 'obesidade.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoriaItem(String faixa, String descricao) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          faixa,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          descricao,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
