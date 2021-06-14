import 'package:elementary_math/primero/ejercicios1.dart';
import 'package:elementary_math/quinto/ejercicios5.dart';
import 'package:elementary_math/segundo/ejercicios2.dart';
import 'package:elementary_math/segundo2/ejercicios2.dart';
import 'package:elementary_math/sexto/ejercicios6.dart';
import 'package:elementary_math/tercero/ejercicios3.dart';
import 'cuarto/ejercicios4.dart';
import 'package:flutter/material.dart';



class Options extends StatelessWidget {
  const Options({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(25, 69, 132, 1),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Selecciona tu nivel',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ejercicios1()));
              },
              child:
                  Text('1 Grado', style: Theme.of(context).textTheme.headline3),
            ),
            SizedBox(
              height: 30,
            ),


            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ejercicios2_2()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(249, 168, 38, 1)),
              child:
                  Text('2 Grado', style: Theme.of(context).textTheme.headline3),
            ),
            SizedBox(
              height: 30,
            ),


            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ejercicios3()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(255, 77, 0, 1)),
              child:
                  Text('3 Grado', style: Theme.of(context).textTheme.headline3),
            ),
            SizedBox(
              height: 30,
            ),


            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ejercicios4()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(90, 199, 51, 1)),
              child:
                  Text('4 Grado', style: Theme.of(context).textTheme.headline3),
            ),


            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ejercicios5()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(163, 34, 150, 1)),
              child:
                  Text('5 Grado', style: Theme.of(context).textTheme.headline3),
            ),
            SizedBox(
              height: 30,
            ),


            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ejercicios6()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(255, 11, 11, 1)),
              child:
                  Text('6 Grado', style: Theme.of(context).textTheme.headline3),
            ),
          ],
        ),
      ),
    );
  }
}
