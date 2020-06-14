import 'package:bmi_calculator/constants.dart';
import 'input.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Icondata extends StatelessWidget {
  final IconData myicon;
  final String label;
  Icondata({this.myicon, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            myicon,
            size: 50,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            label,
            style: kLabelTextStyle,
          ),
        ],
      ),
    );
  }
}
