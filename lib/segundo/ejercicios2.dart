import 'package:elementary_math/segundo/quiz.dart';
import 'package:elementary_math/segundo/result.dart';
import 'package:flutter/material.dart';

class Ejercicios2 extends StatefulWidget {
  Ejercicios2({Key key}) : super(key: key);

  @override
  _EjerciciosState createState() => _EjerciciosState();
}

class _EjerciciosState extends State<Ejercicios2> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _questions = const [
      {
        'questionText': 'Selecciona el simbolo de suma \n\n',
        'exampleImage': 'assets/images/suma.png',
        'answers': [
          {'image': 'assets/images/suma.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/resta.png', 'result': 'Intentalo de nuevo'},
          {
            'image': 'assets/images/division.png',
            'result': 'Intentalo de nuevo'
          },
          {
            'image': 'assets/images/multiplicacion.png',
            'result': 'Intentalo de nuevo'
          },
        ],
      },
      {
        'questionText': 'Selecciona el simbolo de resta \n\n',
        'exampleImage': 'assets/images/suma.png',
        'answers': [
          {'image': 'assets/images/suma.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/resta.png', 'result': 'Bien hecho'},
          {
            'image': 'assets/images/division.png',
            'result': 'Intentalo de nuevo'
          },
          {
            'image': 'assets/images/multiplicacion.png',
            'result': 'Intentalo de nuevo'
          },
        ],
      },
      {
        'questionText': 'Selecciona la imagen con el numero 9 \n\n',
        'exampleImage': 'assets/images/suma.png',
        'answers': [
          {
            'image': 'assets/images/numero2.png',
            'result': 'Intentalo de nuevo'
          },
          {
            'image': 'assets/images/numero4.png',
            'result': 'Intentalo de nuevo'
          },
          {
            'image': 'assets/images/numero6.png',
            'result': 'Intentalo de nuevo'
          },
          {'image': 'assets/images/numero9.png', 'result': 'Bien hecho'},
        ],
      },
      {
        'questionText': 'Selecciona el simbolo de multiplicacion \n\n',
        'exampleImage': 'assets/images/suma.png',
        'answers': [
          {'image': 'assets/images/suma.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/resta.png', 'result': 'Intentalo de nuevo'},
          {
            'image': 'assets/images/division.png',
            'result': 'Intentalo de nuevo'
          },
          {'image': 'assets/images/multiplicacion.png', 'result': 'Bien hecho'},
        ],
      },
      {
        'questionText': 'Selecciona la imagen con el numero 6 \n\n',
        'exampleImage': 'assets/images/suma.png',
        'answers': [
          {
            'image': 'assets/images/numero2.png',
            'result': 'Intentalo de nuevo'
          },
          {
            'image': 'assets/images/numero4.png',
            'result': 'Intentalo de nuevo'
          },
          {'image': 'assets/images/numero6.png', 'result': 'Bien hecho'},
          {
            'image': 'assets/images/numero9.png',
            'result': 'Intentalo de nuevo'
          },
        ],
      },
      {
        'questionText': 'Selecciona la imagen que tenga nueve fichas azules \n\n',
        'exampleImage': 'assets/images/suma.png',
        'answers': [
          {'image': 'assets/images/ficha5.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/ficha4.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/ficha1.png', 'result': 'Bien hecho'},
        ],
      },
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 69, 132, 1),
      body: _questionIndex < _questions.length
          ? Quiz(
              questionIndex: _questionIndex,
              questions: _questions,
              answerQuestion: _answerQuestion,
            )
          : Result(onResetPressed: _resetQuiz),
    );
  }

  void _answerQuestion(String result, BuildContext context) {
    result == 'Bien hecho'
        ? showAlertDialogTrue(context)
        : showAlertDialogFalse(context);
  }

  showAlertDialogTrue(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: null,
          content: Text("¡Bien hecho! Pasa al siguiente ejercicio"),
          actions: [
            TextButton(
                child: Text(
                  "Siguiente",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.blue),
                ),
                style: TextButton.styleFrom(primary: Colors.blue),
                onPressed: () {
                  setState(() {
                    _questionIndex += 1;
                  });
                }),
          ],
        );
      },
    );
  }

  showAlertDialogFalse(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        Future.delayed(Duration(seconds: 5), () {
          Navigator.of(context).pop(true);
        });
        return AlertDialog(
          title: null,
          content: Text("Intentalo de nuevo :)"),
        );
      },
    );
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }
}
