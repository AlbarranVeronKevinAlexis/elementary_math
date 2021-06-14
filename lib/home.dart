import 'dart:async';
import 'package:elementary_math/options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 8);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Options()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(25, 69, 132, 1),
      child: Center(
        child: Column(
          children: [
            Container(
                child: SvgPicture.asset(
              "assets/images/iconFloating.svg",
              height: 250.0,
            )),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white70),
                margin: EdgeInsets.only(top: 30, bottom: 30),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: SvgPicture.asset(
                  "assets/images/iconLap.svg",
                  height: 250.0,
                  color: Colors.white,
                )),
            Column(
              children: [
                Text(
                  'Juega y aprende matemáticas\nnivel primaria',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Nunito', fontSize: 25),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Busca. Encuentra. Piensa.\nDisfruta. Aprende.',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
