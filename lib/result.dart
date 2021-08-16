import "package:flutter/material.dart";
import "./centeredText.dart";

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;

  Result(this.score, this.resetQuiz);

  String get resultPhrase {
    if (score >= 27) {
      return "You are on the right path.";
    } else if (score > 20) {
      return "You need to work a little bit harder.";
    }
    return "You need to work much harder.";
  }

  @override
  Widget build(BuildContext context) {
    print(score);
    return Center(
        child: Column(
      children: [
        CenteredText(
            fontSize: 30,
            text: "Your Score: " + score.toString() + "\n" + resultPhrase,
            bold: true),
        TextButton(
            onPressed: resetQuiz,
            child: CenteredText(
              fontSize: 20,
              text: "Reset Quiz",
            ))
      ],
    ));
  }
}
