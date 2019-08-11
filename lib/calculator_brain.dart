import 'dart:math';

class CalculatorBrain {
  double _imc;

  CalculatorBrain({this.height, this.weight}) {
    _imc = weight / pow(height / 100, 2);
  }

  final int height;
  final int weight;

  String getIMC() {
    return _imc.toStringAsFixed(1);
  }

  String getResults() {
    print(_imc);
    if (_imc >= 25) {
      return 'Acima do peso';
    } else if (_imc > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpretation() {
    if (_imc >= 25) {
      return 'Você possui um peso corporal acima do normal. Tente se exercitar mais.';
    } else if (_imc > 18.5) {
      return 'Você possui um peso corporal normal. Bom trabalho!';
    } else {
      return 'Você possui um peso corporal abaixo do normal. Tente ganhar um pouco de peso.';
    }
  }
}
