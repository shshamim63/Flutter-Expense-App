import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String optionText;
  Answer(this.selectHandler, this.optionText);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(optionText),
        textColor: Colors.white,
        onPressed: selectHandler,
      ),
    );
  }
}
