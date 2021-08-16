import "package:flutter/material.dart";

class CenteredText extends StatelessWidget {
  final double fontSize;
  final String text;
  final bool bold;
  CenteredText({required this.fontSize, required this.text, this.bold = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: bold
            ? Text(
                text,
                style: TextStyle(fontSize: fontSize),
                textAlign: TextAlign.center,
              )
            : Text(
                text,
                style:
                    TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ));
  }
}
