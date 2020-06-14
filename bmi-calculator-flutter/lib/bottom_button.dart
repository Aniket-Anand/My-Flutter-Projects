import 'package:flutter/material.dart';
import 'constants.dart';

class BotomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;
  BotomButton({this.buttonTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(bottom: 10),
        color: kBottomCardColour,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLowerCardStyle,
          ),
        ),
      ),
    );
  }
}
