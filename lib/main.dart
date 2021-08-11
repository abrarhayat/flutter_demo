import "package:flutter/material.dart";
import "./question.dart";

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
  var questions = [
    'What is your favourite editor?',
    'React Native or Flutter?',
    'Express or Apollo?'
  ]; //type inferencing works by deafult
  var _questionIndex = 0;

  void submitAnswer() {
    setState(() {
      if (_questionIndex < questions.length - 1) _questionIndex++;
    });
    print("Answer Submitted!");
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
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
                onPressed: submitAnswer, child: Text("TestA1")), //named func
            ElevatedButton(
                onPressed: () => print("Answer 2 chosen!"), //anonymous func 1
                child: Text("TestA2")),
            ElevatedButton(
                onPressed: () {
                  //anonymous func 2
                  // ...
                  print("Answer 3 chosen!");
                },
                child: Text("TestA3")),
          ],
        ),
        bottomNavigationBar: Text("Bottom Nav Bar Text"),
      ),
    );
  }
}
