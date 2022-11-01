import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function _printanswer;
  final List<Map<String, Object>> _question;
  final _index;
  
  Quiz(this._printanswer, this._question, this._index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_question[_index]['Questionkey'] as String),
        ...(_question[_index]['Answer'] as List<Map<String, Object>>).map((ans)

            ///... is spread operator
            {
          return Answer(
              () => _printanswer(ans['score']), ans['text'] as String);
        }).toList()
      ],
    );
  }
}
