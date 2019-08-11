import 'package:flutter/material.dart';
import 'package:imc/constants.dart';
import 'package:imc/components/reusable_card.dart';
import 'package:imc/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.imcResult,
    @required this.resultText,
    @required this.interpretation,
  });

  final String imcResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Seu Resultado',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    imcResult,
                    style: kIMCTextStyle,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RECALCULAR',
          ),
        ],
      ),
    );
  }
}
