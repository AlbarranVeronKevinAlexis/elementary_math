import 'package:elementary_math/primero/quiz.dart';
import 'package:elementary_math/primero/result.dart';
import 'package:flutter/material.dart';

class Ejercicios6 extends StatefulWidget {
  Ejercicios6({Key key}) : super(key: key);

  @override
  _EjerciciosState createState() => _EjerciciosState();
}

class _EjerciciosState extends State<Ejercicios6> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _questions = const [
    
      {//Preguna1
        'questionText': 'Don Fernando le dió 165 pesos a sus 5 nietos para que se lo repartieran en partes iguales, sin sobrar nada \n ¿Cuánto le tocó a cada uno?\n\n',
        'answers': [
          {'image': 'assets/images/personas2.png', 'result': 'Imagen'},
          {'image': 'assets/images/33.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/patriciaRespuesta.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/ruedasRespuesta.png', 'result': 'Intentalo de nuevo'},
        ],
      },
      
      {//Preguna2
        'questionText': 'Luisa tiene 32m de listón. Si quiere elaborar 40 moños del mismo tamaño \n ¿Cuánto debe de medir cada moño?\n\n\n',
        'answers': [
          {'image': 'assets/images/5_9.png', 'result': 'Imagen'},
          {'image': 'assets/images/0_4.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/0_6.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/0_8.png', 'result': 'Bien hecho'},
        ],
      },
      
      {//Preguna3
        'questionText': 'Lupita fué a la mercería a comprar 15.5m de tela blanca. Cada metro cuesta 5.60 pesos. \n ¿Cuánto pagó por toda la tela? \n\n\n',
         'answers': [
          {'image': 'assets/images/encaje1.png', 'result': 'Imagen'},
          {'image': 'assets/images/96.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/86-80.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/76.png', 'result': 'Intentalo de nuevo'  },
        ],
      },
      
      { //Preguna4
        'questionText': 'De acuerdo a la siguiente imagen. ¿Qué peso pondrias en el lado izquierdo para que la balanza se encuentre equilibrada?\n\n\n\n',
        'answers': [
          {'image': 'assets/images/6_3.png', 'result': 'Imagen'},
          {'image': 'assets/images/18-15.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/17-15.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/16-15.png', 'result': 'Bien hecho'},
        ],
      },

      { //Preguna5
        'questionText': 'En los caballitos de la feria por cada 6 boletos comprados te regalan 3 mas. En las sillas voladoras, por cada 9 boletos se regalan 3 mas. \n ¿En que juego se puede subir mas veces?\n',
        'answers': [
     //     {'image': 'assets/images/bebe1.png', 'result': 'Imagen'},
          {'image': 'assets/images/caballos.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/sillas.png', 'result': 'Intentalo de nuevo'},
       //   {'image': 'assets/images/galletas2Respuesta.png', 'result': 'Intentalo de nuevo'  },
        ],
      },
      { //Pregunta6
        'questionText': 'En la papelerí, una caja de 15 colores cuesta 30 pesos. En la escuela, una caja de 12 colores cuesta 36 pesos ¿En que lugar es mejor comprar los colores?\n\n\n',
          'answers': [
          {'image': 'assets/images/6_8.png', 'result': 'Imagen'},
          {'image': 'assets/images/pape.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/escu.png', 'result': 'Intentalo de nuevo'},
          //{'image': 'assets/images/450.png', 'result': 'Intentalo de nuevo'  },
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
