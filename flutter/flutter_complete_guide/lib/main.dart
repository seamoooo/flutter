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
      'answer': [
        {'text': 'blck', 'score': 0},
        {'text': 'white', 'score': 0},
        {'text': 'blue', 'score': 10},
        {'text': 'yellow', 'score': 30},
      ]
    },
    {
      'questionText': 'what\s favorit animals',
      'answer': [
        {'text': '犬', 'score': 0},
        {'text': '猿', 'score': 0},
        {'text': '雉', 'score': 10},
        {'text': '桃太郎', 'score': 30},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    // 変更を監視する要素を伝えて、実行された際にwigitの更新を行う
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    _totalScore = 0;
    setState(() {
      _questionIndex = 0;
    });
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
                : Result(_totalScore, _resetQuiz)));
  }
}
