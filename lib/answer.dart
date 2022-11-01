//import 'dart:html';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerfunction;
  final String answertext;

  const Answer(this.answerfunction, this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.pink,
      child: ElevatedButton(
          onPressed: answerfunction,
          child: Text(
            answertext,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
