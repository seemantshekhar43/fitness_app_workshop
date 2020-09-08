import 'package:fitness_app/components/bottom_button.dart';
import 'package:fitness_app/components/reusable_card.dart';
import 'package:fitness_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  final String bmi;
  final String interpretation;
  final String feedback;


  ResultScreen({@required this.bmi,@required this.interpretation,@required this.feedback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Calculator'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Your Result',
              style: kNumberStyle,
            ),
            alignment: Alignment.bottomLeft,
          ),
          Expanded(
            child: ReusableCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    interpretation.toUpperCase(),
                    style: kInterpretationStyle,
                  ),
                  Text(
                   bmi,
                    style: kBMIStyle,
                  ),
                  Text(
                   feedback,
                    style: kFeedbackStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
              child: BottomButton(label: 're-calculate',)),
        ],
      ),
    );
  }
}
