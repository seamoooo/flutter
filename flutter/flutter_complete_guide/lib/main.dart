import 'package:flutter/material.dart';

import './question.dart';

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
  // 通常の関数宣言をしてしまうとMyappのクラスメソッドになってしまう。
  var questionIndex = 0;

  void anserQuestion() {
    // 変更を監視する要素を伝えて、実行された際にwigitの更新を行う
    // 対象の箇所のbuikdを行う
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override // flutterので用意されているstatemant 上書きしている際に書くことを推奨左rて言える
  Widget build(BuildContext context) {
    var question = [
      'what\'s favarit clolor',
      'what\s favorit animals',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("hello"),
          ),
          body: Column(
            children: [
              Question(
                question[questionIndex],
              ),
              ElevatedButton(
                child: Text('anser 1'),
                // 下記の場合だと関数の戻り値(void)を渡してしまっているので、エラーになる
                // onPressed: anserQuestion(),
                // 下記のようにポインタを渡す必要がある
                onPressed: anserQuestion,
              ),
              ElevatedButton(
                child: Text('anser 2'),
                //　アロー関数で呼び出すこともできる
                onPressed: () => print("hoge"),
              ),
              ElevatedButton(
                child: Text('anser 3'),
                // プロパティに対して直接関数を設定することも可能
                onPressed: () {
                  print("直接関数を設定できる");
                },
              ),
            ],
          )),
    );
  }
}
