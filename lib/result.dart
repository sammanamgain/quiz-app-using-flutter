import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  int score;
  final VoidCallback _reset;
  Result(this.score, this._reset);

  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Expanded(child: Center(child: Text(" you finished the quiz"))),
        Expanded(child: Text(" your fucking score is :$score ")),
        Expanded(
            child: TextButton(
          child: Text("reset this quiz"),
          onPressed: _reset,
        ))
      ]),
    );
  }
}
