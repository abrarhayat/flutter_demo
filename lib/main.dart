import "package:flutter/material.dart";
import "./result.dart";
import "./quiz.dart";

// void main() {
//   runApp(AbrarApp());
// }

void main() => runApp(DemoApp()); //shorthand syntax

class DemoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DemoAppState();
  }
}

class _DemoAppState extends State {
  //State to be used in a Stateful Widget
  static const _questions = [
    {
      'questionText': 'What is your favourite editor or IDE?',
      'answers': [
        {'text': 'Jetbrains IDEs', 'score': 7},
        {'text': 'VS Code', 'score': 10},
        {'text': 'X-Code', 'score': 5},
        {'text': 'Atom', 'score': 2},
      ]
    },
    {
      'questionText': 'Which one do you prefer for Mobile App?',
      'answers': [
        {'text': 'React Native', 'score': 10},
        {'text': 'Native Apis', 'score': 7},
        {'text': 'Flutter', 'score': 10},
        {'text': 'Ionic', 'score': 2},
      ]
    },
    {
      'questionText': 'What is you preferred Backend Framework/Stack?',
      'answers': [
        {'text': 'Spring Boot', 'score': 7},
        {'text': 'Express JS', 'score': 10},
        {'text': 'Django', 'score': 5},
        {'text': 'Oak Deno JS', 'score': 10},
        {'text': 'Apollo JS', 'score': 10},
      ]
    }
  ]; //type inferencing works by deafult
  var _questionIndex = 0;
  var _score = 0;

  void _submitAnswer(int score) {
    setState(() {
      _questionIndex++;
      _score += score;
    });
    if (_questionIndex < _questions.length) {
      print("Answer Submitted!");
      return;
    }
    print("Questionnaire completed!");
  }

  @override
  Widget build(BuildContext context) {
    // List<String> questions = ['Q1', 'Q2'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Test Appbar Title",
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                submitAnswer: _submitAnswer,
              )
            : Result(_score),
        bottomNavigationBar: Text("Bottom Nav Bar Text"),
      ),
    );
  }
}
