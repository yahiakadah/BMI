import 'dart:math';

class CalculateBrain{

  CalculateBrain({this.weight,this.height});

  final int weight;
  final int height;
  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if( _bmi >= 25 ){
      return 'OverWeight';
    } else if ( _bmi >= 18.5){
      return 'Normal';
    }else {
      return 'UnderWeghit';
    }
  }

  String getInterpretation(){
    if( _bmi >= 25 ){
      return 'You Have A Higher Than Normal Body Weight. Try To Exeecise More !!';
    } else if ( _bmi >= 18.5){
      return 'You Have A Normal Body Weight. Good Job !!';
    }else {
      return 'You Have A Lower Than Normal Body Weight. You Can Eat A Bit More !!';
    }
  }

}