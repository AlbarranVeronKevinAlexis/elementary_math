import 'package:elementary_math/segundo/imagenEjemplo.dart';
import 'package:elementary_math/segundo/question2.dart';
import 'package:flutter/material.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz({
    @required this.questionIndex,
    @required this.questions,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question2(questionText: questions[questionIndex]['questionText']),
          ImagenEjemplo(
              imagenEjemplo: questions[questionIndex]['exampleImage']),
          Expanded(
              child: Answer(
            data: questions[questionIndex]['answers'],
            answerQuestion: answerQuestion,
            context1: context,
          )),
          // ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          //     .map((answer) {
          //   return Expanded(
          //     child: Answer(
          //       onPressed: () => answerQuestion(answer['result'], context),
          //       image: answer['image'],
          //     ),
          //   );
          //}),
        ],
      ),
    );
  }
}
