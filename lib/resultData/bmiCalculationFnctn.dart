import 'dart:math';

class BmiCalculation {
  final height;
  final weight;

  BmiCalculation({required this.height, required this.weight});

  double bmiCalculation() {
    double _bmi = weight / pow((height / 100), 2);
    return _bmi;
  }

  String bmiResult() {
    double _bmi = bmiCalculation();
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.25) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiResultStatement() {
    double _bmi = bmiCalculation();
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more (:';
    } else if (_bmi > 18.25) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more (:';
    }
  }
}
