import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // 何もreturnしないので、VoidCabackも設定可能
  final Function selectHundler;
  final String answerText;

  // コンストラクターとして、関数ををとる
  Answer(this.selectHundler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
        child: Text(answerText),
        onPressed: selectHundler, // トリガーの設定のため、()で即時実行ぜず、ポインタを渡す
      ),
    );
  }
}
