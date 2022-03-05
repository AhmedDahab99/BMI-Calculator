import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _resultBMI;
  String calculateBMI(){
    _resultBMI = weight / pow(height/100, 2);
    return _resultBMI.toStringAsFixed(1);
  }
  String getResult(){
    if(_resultBMI >= 25){
      return 'Overweight';
    }else if(_resultBMI > 18.5){
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getAdvice(){
    if(_resultBMI >= 25){
      return 'you have a higher than normal body weight. you should do some exercises';
    }else if(_resultBMI > 18.5){
      return 'you have a normal body weight. good';
    } else {
      return 'you have a lower than normal body weight. you should eat a bit more';
    }
  }
}