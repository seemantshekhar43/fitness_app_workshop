import 'dart:math';

class CalculatorBrain{
  int weight;
  int height;
  double _bmi;
  CalculatorBrain({this.weight, this.height});

  //bmi
  String calculateBMI(){
    _bmi = weight / (pow(height/100, 2));
    return _bmi.toStringAsFixed(1); // 18.1, 22.3
  }

  //interpretation
  String getInterpretation(){
    if(_bmi >= 25)
      return 'Overweight';
    if(_bmi> 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  //feedback
  String getFeedback(){
    if(_bmi >= 25)
      return 'You have a higher than normal body weight. Try to exercise more.';
    if(_bmi> 18.5)
      return 'You have a normal body weight. Good job!!';
    else
      return 'You have a lower than normal body weight. You can eat a bit more.';
  }

}