import 'file:///C:/Users/Yehia-Kadah/Downloads/i_am_rich2/bmi/lib/components/Reusable_Card.dart';
import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi/screens/input_page.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult,@required this.interpretation,@required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Your Result',
                  style: titleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: ActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: resultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: bmiNumberStyle,
                    ),
                    Text(interpretation,
                      style: bmiBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(buttonTitle: 'RE-CALCULATE',
              onTap: (){
              Navigator.pop(context);
            },
            )
          ],
        ));
  }
}
