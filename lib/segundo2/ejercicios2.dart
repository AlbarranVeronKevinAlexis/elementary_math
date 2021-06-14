import 'package:elementary_math/primero/quiz.dart';
import 'package:elementary_math/primero/result.dart';
import 'package:flutter/material.dart';

class Ejercicios2_2 extends StatefulWidget {
  Ejercicios2_2({Key key}) : super(key: key);

  @override
  _EjerciciosState createState() => _EjerciciosState();
}

class _EjerciciosState extends State<Ejercicios2_2> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _questions = const [
    
      {//Preguna1
        'questionText': 'Martha quiere comprar 2 muñecas, 1 planta y 1 máscara ¿Cuánto pagará en total?\n\n\n',
        'answers': [
          {'image': 'assets/images/martha1.png', 'result': 'Imagen'},
          {'image': 'assets/images/marthaRespuesta.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/op4.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/op3.png', 'result': 'Intentalo de nuevo'},
        ],
      },
      
      {//Preguna2
        'questionText': 'Observa la imagen y cuenta las monedas que salen de tu alcancía \n\n\n',
       'answers': [
          {'image': 'assets/images/alcancia3.png', 'result': 'Imagen'},
          {'image': 'assets/images/op1.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/op4.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/op3.png', 'result': 'Bien hecho'},
        ],
      },
      
      {//Preguna3
        'questionText': 'En la fiesta de Tavo hay 5 niños y 3 niñas para pegarle a la piñata. Si llegan otros 5 niños y 7 niñas. \n\n ¿Cuántos niños y niñas en total hay? \n\n',
         'answers': [
          {'image': 'assets/images/fiesta.png', 'result': 'Imagen'},
          {'image': 'assets/images/op1.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/fiestaRespuesta.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/op9.png', 'result': 'Intentalo de nuevo'  },
        ],
      },
      
      { //Preguna4
        'questionText': 'Observa la imagen y cuenta las monedas que salen de tu alcancía \n\n\n\n',
     'answers': [
          {'image': 'assets/images/alcancia1.png', 'result': 'Imagen'},
          {'image': 'assets/images/op1.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/marthaRespuesta.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/alcancia1respuesta.png', 'result': 'Bien hecho'},
        ],
      },

      { //Preguna5
        'questionText': 'Si pagas con 100 pesos por 2 órdenes de quesadillas y 2 helados \n\n ¿Cúanto te quedará de cambio?\n\n\n',
        'answers': [
          {'image': 'assets/images/patricia1.png', 'result': 'Imagen'},
          {'image': 'assets/images/patriciaRespuesta.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/op1.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/op2.png', 'result': 'Intentalo de nuevo'  },
        ],
      },
      { //Pregunta6
        'questionText': '¿Cuántas galletas hay en total?\n\n\n',
          'answers': [
          {'image': 'assets/images/galletas2.png', 'result': 'Imagen'},
          {'image': 'assets/images/galletas2Respuesta.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/op6.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/op5.png', 'result': 'Intentalo de nuevo'  },
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
