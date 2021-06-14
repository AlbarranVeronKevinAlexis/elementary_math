import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question({@required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 80, left: 30, right: 30, bottom: 30),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2.copyWith(height: 1),
      ),
    );
  }
}
