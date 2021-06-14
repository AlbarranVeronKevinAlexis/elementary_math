import 'package:flutter/material.dart';

class Question2 extends StatelessWidget {
  final String questionText;

  Question2({@required this.questionText});
  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 80, left: 30, right: 30, bottom: 30),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: Theme.of(_context).textTheme.headline2.copyWith(height: 1),
      ),
    );
  }
}
