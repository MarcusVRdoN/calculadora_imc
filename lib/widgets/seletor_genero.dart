import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeletorGenero extends StatelessWidget {
  final String generoSelecionado;
  final Function(String) aoMudarGenero;
  final bool habilitado;

  SeletorGenero({
    super.key,
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
    final bool selecionado = generoSelecionado == valor;
    final String seed = valor == 'masculino' ? 'Kimberly' : 'Easton';
    final String url =
        'https://api.dicebear.com/9.x/adventurer-neutral/svg?seed=$seed';

    return GestureDetector(
      onTap: habilitado ? () => aoMudarGenero(valor) : null,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: selecionado ? Colors.blue.withAlpha(51) : Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: SvgPicture.network(
                url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
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
