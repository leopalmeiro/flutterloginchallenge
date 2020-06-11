import 'package:flutter/material.dart';

class ControlFormButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String title;
  final Function onPress;
  const ControlFormButton({
    @required this.backgroundColor,
    @required this.textColor,
    @required this.title,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      textColor: textColor,
      color: backgroundColor,
      child: Text(title),
      onPressed: onPress,
    );
  }
}
