
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String Questiontext;
  Question(this.Questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          Questiontext,
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ));
  }
}
