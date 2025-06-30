import 'package:flutter/material.dart';

class SeletorGenero extends StatelessWidget {
  final String generoSelecionado;
  final Function(String) aoMudarGenero;
  final bool habilitado;

  SeletorGenero({super.key, 
    required this.generoSelecionado,
    required this.aoMudarGenero,
    this.habilitado = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildOpcaoGenero('Masculino', 'masculino'),
        SizedBox(width: 40),
        _buildOpcaoGenero('Feminino', 'feminino'),
      ],
    );
  }

  Widget _buildOpcaoGenero(String rotulo, String valor) {
    bool selecionado = generoSelecionado == valor;
    String seed = valor == 'masculino' ? 'Felix' : 'Aneka';
    
    return GestureDetector(
      onTap: habilitado ? () => aoMudarGenero(valor) : null,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: selecionado ? Colors.blue[100] : Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.network(
                'https://api.dicebear.com/7.x/fun-emoji/svg?seed=$seed',
                width: 60,
                height: 60,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    valor == 'masculino' ? Icons.face : Icons.face_3,
                    size: 40,
                    color: selecionado ? Colors.blue : Colors.grey,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            rotulo,
            style: TextStyle(
              color: selecionado ? Colors.black : Colors.grey,
              fontWeight: selecionado ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}