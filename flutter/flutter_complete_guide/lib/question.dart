import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // ステートレスだが、外からデータを渡されるとbuildメソッドが呼ばれ、rebuildされる
  // 初期化後はイミュータブル(変更不可)になることをfinalキーワードで伝える
  final String questionText;

  // クラスのコンストラクタに設定してプロパティを更新できるようにする
  // 中括弧で区切っていないので、名前付き引数にはならない
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // contauner はdiv的なもの
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10), //上下左右, onlyだと一方
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center, // comandでリファレンスにジャンプできる
      ),
    );
  }
}
