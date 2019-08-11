import 'package:flutter/material.dart';
import 'package:imc/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
