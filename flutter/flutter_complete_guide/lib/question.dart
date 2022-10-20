import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // 初期化後はイミュータブルになることをfinakキーワードで伝える
  final String questionText;

  // クラスのコンストラクタの設定してプロパティを更新できるようにする
  // 中括弧で区切っていないので、名前付き引数にはならない
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
