import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final questions = const [
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

  void _anserQuestion() {
    var aBool = true;
    if (_questionIndex < questions.length) {}
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
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'],
              ),
              // スプレッド演算子で、配列の要素を動的に生成
              ...(questions[_questionIndex]['answer'] as List<String>)
                  .map((answer) {
                // callback関数、 関数のポインタを渡して将来的に実行されるようにする
                return Answer(_anserQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
