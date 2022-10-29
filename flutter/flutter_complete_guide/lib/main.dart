import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// _をつけるとパブリッククラスになる
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s favarit clolor',
      'answer': ['blck', 'white', 'blue']
    },
    {
      'questionText': 'what\s favorit animals',
      'answer': ['犬', '鳥', '猿']
    },
    {
      'questionText': 'what\'s favarit game',
      'answer': ['nyantendo', 'sony', 'netoge']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    // 変更を監視する要素を伝えて、実行された際にwigitの更新を行う
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override // flutterので用意されているstatemant 上書きしている際に書くことを推奨左rて言える
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("hello"),
            ),
            body: _questionIndex < _questions.length //三項演算子
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result()));
  }
}
