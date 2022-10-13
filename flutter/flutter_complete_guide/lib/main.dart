import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override // flutterので用意されているstatemant 上書きしている際に書くことを推奨左rて言える
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('hello'));
  }
}
