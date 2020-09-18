import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a overweight! Which may have diverse effect on baby like Pre-mature birth, Blood-Clot,Heart Defect in baby.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job! but try to maintain this by staying hydrated, exercise regularly.';
    } else {
      return 'You have a lower than normal body weight. You can overcome this by following this - Eat 5-6 small meals everyday, eat apple,banana and try to add cheese/butter to normal diet.';
    }
  }
}
