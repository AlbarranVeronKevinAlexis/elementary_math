import 'package:elementary_math/primero/quiz.dart';
import 'package:elementary_math/primero/result.dart';
import 'package:flutter/material.dart';

class Ejercicios4 extends StatefulWidget {
  Ejercicios4({Key key}) : super(key: key);

  @override
  _EjerciciosState createState() => _EjerciciosState();
}

class _EjerciciosState extends State<Ejercicios4> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _questions = const [
    
      {//Preguna1
        'questionText': 'Adivina adivinador \n\n  Tengo 6 lados todos son exactamente iguales \n\n ¿Quien soy? \n Selecciona la figura correcta\n',
        'answers': [
          //{'image': 'assets/images/naranjas1.png', 'result': 'Imagen'},
          {'image': 'assets/images/hexagono.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/eclipse.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/rectangulo2.png', 'result': 'Intentalo de nuevo'},
        ],
      },
      
      {//Preguna2
        'questionText': 'Tu mejor amiga tiene 900 pesos ahorrados y quiere ocmprar una blusa de 199 pesos \n ¿Cuánto dinero le quedará después de comprarla?\n\n\n',
       'answers': [
          {'image': 'assets/images/blusa2.png', 'result': 'Imagen'},
          {'image': 'assets/images/ruedasRespuesta.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/carro1respuesta.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/701.png', 'result': 'Bien hecho'},
        ],
      },
      
      {//Preguna3
        'questionText': 'Si tus papás compran una mesa de 550 pesos y pagan 115 pesos del envío \n\n ¿Cuánto pagarán en total?\n\n\n',
         'answers': [
          {'image': 'assets/images/mesa.jpg', 'result': 'Imagen'},
          {'image': 'assets/images/701.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/665.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/450.png', 'result': 'Intentalo de nuevo'  },
        ],
      },
      
      { //Preguna4
        'questionText': 'Adivina adivinador \n\n Tengo 4 lados, 2 cortos y 2 mas largos \n ¿Quién soy? \n Selecciona la respuesta correcta \n',
        'answers': [
          //{'image': 'assets/images/carro1.jpg', 'result': 'Imagen'},
          {'image': 'assets/images/opFigura2.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/triangulo2.png', 'result': 'Intentalo de nuevo'  },
          {'image': 'assets/images/rombo.png', 'result': 'Bien hecho'},
        ],
      },

      { //Preguna5
        'questionText': 'Estás en la tienda y tienes 80 pesos. Ahí compras unas galletas de 18 pesos. \n\n ¿Cuánto te sobrara? \n\n',
        'answers': [
          {'image': 'assets/images/galletas.jpg', 'result': 'Imagen'},
          {'image': 'assets/images/62.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/alcancia1respuesta.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/galletas3Respuesta.png', 'result': 'Intentalo de nuevo'  },
        ],
      },
      { //Pregunta6
        'questionText': 'Adivina adivinador \n\n Tengo 6 lados completamente diferentes \n\n ¿Quién soy? \n Selecciona la respuesta correcta \n',
          'answers': [
          //{'image': 'assets/images/galletas2.png', 'result': 'Imagen'},
          {'image': 'assets/images/opFigura.png', 'result': 'Bien hecho'},
          {'image': 'assets/images/opFigura2.png', 'result': 'Intentalo de nuevo'},
          {'image': 'assets/images/eclipse.png', 'result': 'Intentalo de nuevo'  },
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
