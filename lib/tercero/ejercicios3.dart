import 'package:elementary_math/primero/quiz.dart';
import 'package:elementary_math/primero/result.dart';
import 'package:flutter/material.dart';

class Ejercicios3 extends StatefulWidget {
  Ejercicios3({Key key}) : super(key: key);

  @override
  _EjerciciosState createState() => _EjerciciosState();
}

class _EjerciciosState extends State<Ejercicios3> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _questions = const [
    
      {//Preguna1
        'questionText': 'Si hay 10 montones iguales de naranjas \n\n  ¿Cuántas naranjas hay en total? \n\n',
        'answers': [
          {'image': 'assets/images/naranjas1.png', 'result': 'Imagen'},
          {'image': 'assets/images/naranjas1Respuesta.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/op8.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/op9.png', 'result': 'Intentalo de nuevo'},
        ],
      },
      
      {//Preguna2
        'questionText': 'Cuántas galletas hay en total \n\n\n',
       'answers': [
          {'image': 'assets/images/galletas3.png', 'result': 'Imagen'},
          {'image': 'assets/images/op1.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/alcancia1respuesta.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/galletas3Respuesta.png', 'result': 'Bien hecho'},
        ],
      },
      
      {//Preguna3
        'questionText': '¿Cuántos palillos necesitas para hacer la siguiente figura? \n\n\n',
         'answers': [
          {'image': 'assets/images/palillos.png', 'result': 'Imagen'},
          {'image': 'assets/images/fiestaRespuesta.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/palillosRespuesta.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/op8.png', 'result': 'Intentalo de nuevo'  },
        ],
      },
      
      { //Preguna4
        'questionText': 'Tu papá quiere comprarte un carro de juguete que cuesta 230 y tiene un descuento de 100 \n ¿Cuánto pagará? \n\n\n',
        'answers': [
          {'image': 'assets/images/carro1.jpg', 'result': 'Imagen'},
          {'image': 'assets/images/op9.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/ruedasRespuesta.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/carro1respuesta.png', 'result': 'Bien hecho'},
        ],
      },

      { //Preguna5
        'questionText': 'Si pagas con 200 pesos por 3 órdenes de quesadillas y 3 tortas \n\n ¿Cúanto te quedará de cambio? \n\n\n',
        'answers': [
          {'image': 'assets/images/patricia1.png', 'result': 'Imagen'},
          {'image': 'assets/images/74.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/op5.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/op2.png', 'result': 'Intentalo de nuevo'  },
        ],
      },
      { //Pregunta6
        'questionText': 'Si tu mamá te diera el doble de galletas de la imagen \n\n ¿Cuántas galletas tendrías? \n\n\n',
          'answers': [
          {'image': 'assets/images/galletas2.png', 'result': 'Imagen'},
          {'image': 'assets/images/16.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/galletas3Respuesta.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/op3.png', 'result': 'Intentalo de nuevo'  },
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
