import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/commen_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String assetName, //@required keyword Makes it compulsory
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : assert(text != null), //assert() makes sure the values are not null
  //Assertions only work in debug mode, they completely removed by compiler in release mode(Production mode)
       assert(assetName != null),
        super (
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        Image.asset(assetName),
        Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15.0,
            ),
        ),
        Opacity(
          opacity: 0.0,
          child: Image.asset(assetName),
        ),
      ],
    ),
    color: color,
    onPressed: onPressed,
  );
}