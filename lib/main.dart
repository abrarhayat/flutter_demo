import "package:flutter/material.dart";

// void main() {
//   runApp(AbrarApp());
// }

void main() => runApp(AbrarApp()); //shorthand syntax

class AbrarApp extends StatelessWidget {
  void submitAnswer() {
    print("Answer Submitted!");
  }

  @override
  Widget build(BuildContext context) {
    // List<String> questions = ['Q1', 'Q2'];
    var questions = ['Q1', 'Q2']; //type inferencing works by deafult
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Test Appbar Title",
          ),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: submitAnswer, child: Text("TestQ1")), //named func
            ElevatedButton(
                onPressed: () => print("Answer 2 chosen!"), //anonymous func 1
                child: Text("TestQ2")),
            ElevatedButton(
                onPressed: () { //anonymous func 2
                  // ...
                  print("Answer 3chosen!");
                },
                child: Text("TestQ3")),
          ],
        ),
        bottomNavigationBar: Text("Bottom Nav Bar Text"),
      ),
    );
  }
}
