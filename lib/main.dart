import "package:flutter/material.dart";

// void main() {
//   runApp(AbrarApp());
// }

void main() => runApp(AbrarApp()); //shorthand syntax

class AbrarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Abrar's Demo App"),
    );
  }
}
