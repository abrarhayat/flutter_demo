import "package:flutter/material.dart";

class CenteredText extends StatelessWidget {
  final double fontSize;
  final String text;
  CenteredText(this.fontSize, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize),
        textAlign: TextAlign.center,
      ),
    );
  }
}
