import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        // スプレッド演算子で、配列の要素を動的に生成
        ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
          // callback関数、 関数のポインタを渡して将来的に実行されるようにする
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
