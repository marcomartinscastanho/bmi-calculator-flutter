import 'dart:math';

class CalculatorBrain {
  int height;
  int weight;
  double _bmi;

  CalculatorBrain({this.weight, this.height});

  String calculateBMI() {
    _bmi = weight / pow(height / 100.0, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi == null) {
      calculateBMI();
    }

    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Uderweight';
    }
  }

  String getInterpretation() {
    Map<String, String> interpretations = {
      'Overweight': 'Eat less',
      'Normal': 'You\'re ok',
      'Uderweight': 'Eat more'
    };

    return interpretations[getResult()];
  }
}
