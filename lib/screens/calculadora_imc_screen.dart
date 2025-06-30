import 'package:flutter/material.dart';
import 'resultado_imc_screen.dart';
import 'categorias_imc_screen.dart';
import '../widgets/seletor_genero.dart';

class CalculadoraIMCScreen extends StatefulWidget {
  const CalculadoraIMCScreen({super.key});

  @override
  _CalculadoraIMCScreenState createState() => _CalculadoraIMCScreenState();
}

class _CalculadoraIMCScreenState extends State<CalculadoraIMCScreen> {
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  String generoSelecionado = 'masculino';

  void calcularIMC() {
    final String textoPeso = pesoController.text;
    final String textoAltura = alturaController.text;

    if (textoPeso.isEmpty || textoAltura.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, preencha todos os campos')),
      );
      return;
    }

    final double? peso = double.tryParse(textoPeso);
    final double? altura = double.tryParse(textoAltura);

    if (peso == null || altura == null || peso <= 0 || altura <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, insira valores válidos')),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultadoIMCScreen(
          peso: peso,
          altura: altura,
          genero: generoSelecionado,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back, color: Colors.black),
                      SizedBox(width: 10),
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
                generoSelecionado: generoSelecionado,
                aoMudarGenero: (genero) {
                  setState(() {
                    generoSelecionado = genero;
                  });
                },
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seu peso (kg)',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: pesoController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            hintText: '80',
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sua altura (cm)',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: alturaController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            hintText: '175',
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: calcularIMC,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Calcular seu IMC',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    pesoController.dispose();
    alturaController.dispose();
    super.dispose();
  }
}
