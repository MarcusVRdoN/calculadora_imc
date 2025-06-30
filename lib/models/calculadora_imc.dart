class CalculadoraIMC {
  static double calcular(double peso, double alturaEmCm) {
    final double alturaEmMetros = alturaEmCm / 100;
    return peso / (alturaEmMetros * alturaEmMetros);
  }

  static String obterCategoria(double imc) {
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc >= 18.5 && imc < 25) {
      return 'Normal';
    } else if (imc >= 25 && imc < 30) {
      return 'Sobrepeso';
    } else {
      return 'Obesidade';
    }
  }
}