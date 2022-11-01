import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const Myownapp());
}

class Myownapp extends StatefulWidget {
  const Myownapp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyownappState();
  }
}

class _MyownappState extends State<Myownapp> {
  var _finalscore = 0;
  var _index = 0;
  final _question = const [
    {
      'Questionkey': "which cryptocurrency do you like",
      'Answer': [
        {'text': 'bitcoin', 'score': 1},
        {'text': 'etherium', 'score': 0}
      ]
    },
    {
      'Questionkey': "and why do you like that?",
      'Answer': [
        {'text': 'stable', 'score': 1},
        {'text': 'i don\'t know actually', 'score': 0}
      ]
    },
  ];
  void _printanswer(int score) {
    _finalscore += score;

    setState(() {
      _index++;
    });
  }

  void _resetquiz() {
    setState(() {
      _index = 0;
      _finalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("crytocurrency analyzer")),
            body: (_index < _question.length)
                ? Quiz(
                    _printanswer,
                    _question,
                    _index,
                  )
                : Result(_finalscore, _resetquiz)));
  }
}
