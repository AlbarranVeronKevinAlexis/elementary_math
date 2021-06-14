import 'package:elementary_math/primero/quiz.dart';
import 'package:elementary_math/primero/result.dart';
import 'package:flutter/material.dart';

class Ejercicios5 extends StatefulWidget {
  Ejercicios5({Key key}) : super(key: key);

  @override
  _EjerciciosState createState() => _EjerciciosState();
}

class _EjerciciosState extends State<Ejercicios5> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _questions = const [
    
      {//Preguna1
        'questionText': 'En un salón de fiestas se preparan mesas para 12 comensales cada una. \n Si asistirán 144 comensales. \n  ¿Cuántas mesas deben preparar?\n\n',
        'answers': [
          {'image': 'assets/images/fiesta2.png', 'result': 'Imagen'},
          {'image': 'assets/images/12.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/24.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/36.png', 'result': 'Intentalo de nuevo'},
        ],
      },
      
      {//Preguna2
        'questionText': '¿Las siguientes lineas son paralelas o perpendiculares?\n\n\n\n',
       'answers': [
          {'image': 'assets/images/paralelas4.png', 'result': 'Imagen'},
          {'image': 'assets/images/perpendicularesR.png', 'result': 'Intentalo de nuevo'},
          //{'image': 'assets/images/alcancia1respuesta.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/paraletasR.png', 'result': 'Bien hecho'},
        ],
      },
      
      {//Preguna3
        'questionText': 'Comparando las vías del tren que son perpendiculares, menciona si las siguientes líneas son paralelas o perpendiculares \n\n\n',
         'answers': [
          {'image': 'assets/images/perpendiculares1.png', 'result': 'Imagen'},
          //{'image': 'assets/images/fiestaRespuesta.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/perpendicularesR.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/paraletasR.png', 'result': 'Intentalo de nuevo'  },
        ],
      },
      
      { //Preguna4
        'questionText': '¿Las siguientes lineas son paralelas o perpendiculares?\n\n\n\n',
        'answers': [
          {'image': 'assets/images/paralelas1.png', 'result': 'Imagen'},
          //{'image': 'assets/images/op9.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/perpendicularesR.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/paraletasR.png', 'result': 'Bien hecho'},
        ],
      },

      { //Preguna5
        'questionText': 'Ruby tiene un bebé y el médico le recomendó que le diera un biberón de 250 ml de leche despues de las papillas. \n ¿Para cuantos biberones de 250 ml alcanza 1 litro de leche? \n',
        'answers': [
          {'image': 'assets/images/bebe1.png', 'result': 'Imagen'},
          {'image': 'assets/images/op5.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/op6.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/galletas2Respuesta.png', 'result': 'Intentalo de nuevo'  },
        ],
      },
      { //Pregunta6
        'questionText': 'Ángel, Alejandro y Alexis compraron un videojuego de 1000 pesos. Ángel puso la mitad, Alejandro puso una cuarta parte y Alexis otra cuarta parte del dinero. \n ¿Cuánto dinero puso Alejandro?\n',
          'answers': [
          {'image': 'assets/images/videojuegos.png', 'result': 'Imagen'},
          {'image': 'assets/images/250.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/500.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/450.png', 'result': 'Intentalo de nuevo'  },
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
