import 'package:flutter/material.dart';
import 'package:practice/components/bmiCard.dart';
import 'package:practice/components/bottomBtn.dart';
import 'package:practice/components/constants.dart';

class resultPage extends StatelessWidget {
  final String bmiStatus;
  final String bmiIndex;
  final String bmiResult;

  resultPage(
      {required this.bmiStatus,
      required this.bmiIndex,
      required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: kTitleStyle,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(28.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultLabel,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BmiCard(
              colour: kBmiInActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiStatus,
                    style: kBmiStatus,
                  ),
                  Text(
                    bmiIndex,
                    style: kBmiIndexNo,
                  ),
                  Text(
                    bmiResult,
                    textAlign: TextAlign.center,
                    style: kBmiResultText,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ),
          BottomButton(
            btnText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
