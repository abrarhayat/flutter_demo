import "package:flutter/material.dart";
import "./centeredText.dart";

class Result extends StatelessWidget {
  final int score;
  Result(this.score);
  @override
  Widget build(BuildContext context) {
    print(score);
    return Column(children: [
      CenteredText(28, "Thank you for your Feedback"),
      CenteredText(30, "Your Score: " + score.toString())
    ]);
  }
}
