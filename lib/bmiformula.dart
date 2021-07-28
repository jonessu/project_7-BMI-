import 'dart:math';

import 'bmical.dart';

class claculatebmiformula {
  claculatebmiformula({this.height, this.weight});
  final double height;
  final double weight;

  double bmi;

  String Calculate_Bmi() {
    bmi = weight / (pow(height / 100, 2));
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25.0) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25.0) {
      return 'You have a higher than normal weight. Try to Exercise more.';
    } else if (bmi > 18.5) {
      return 'Normal have a normal weight. Good job!';
    } else {
      return 'you have a lower than normal body weight. you can eat a bit more.';
    }
  }
}
