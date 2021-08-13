import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; //a callback which returns nothing
  final String answerText;

  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child:
            ElevatedButton(onPressed: selectHandler, child: Text(answerText)));
  }
}
