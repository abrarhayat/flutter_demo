import 'package:flutter/material.dart';
import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback submitAnswer;

  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.submitAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answerText) {
          return Answer(answerText, submitAnswer);
        }).toList(),
      ],
    );
  }
}
