import "package:flutter/material.dart";

// void main() {
//   runApp(AbrarApp());
// }

void main() => runApp(AbrarApp()); //shorthand syntax

class AbrarApp extends StatelessWidget {
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
            ElevatedButton(onPressed: null, child: Text("TestQ1")),
            ElevatedButton(onPressed: null, child: Text("TestQ2")),
            ElevatedButton(onPressed: null, child: Text("TestQ3")),
          ],
        ),
        bottomNavigationBar: Text("Bottom Nav Bar Text"),
      ),
    );
  }
}
