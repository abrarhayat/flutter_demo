import "package:flutter/material.dart";

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          "Thank you for your Feedback",
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
      )
    ]);
  }
}
