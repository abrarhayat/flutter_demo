import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

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
  static const questions = [
    {
      'questionText': 'What is your favourite editor or IDE?',
      'answers': [
        'VS Code',
        'Jetbrains IDEs',
        'X-Code',
        'Atom',
      ]
    },
    {
      'questionText': 'Which one do you prefer for Mobile App?',
      'answers': [
        'React Native',
        'Flutter',
        'Native Apis',
        'Ionic',
      ]
    },
    {
      'questionText': 'What is you preferred Backend Framework/Stack?',
      'answers': [
        'Spring Boot',
        'Express JS',
        'Django',
        'Oak Deno JS',
        'Apollo JS',
      ]
    }
  ]; //type inferencing works by deafult
  var _questionIndex = 0;

  void _submitAnswer() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText'] as String),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answerText) {
                    return Answer(answerText, _submitAnswer);
                  }).toList(),
                ],
              )
            : Column(children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Thank you for your Feedback",
                    style: TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
        bottomNavigationBar: Text("Bottom Nav Bar Text"),
      ),
    );
  }
}
