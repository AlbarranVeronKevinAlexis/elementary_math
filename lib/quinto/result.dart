import 'package:elementary_math/options.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function onResetPressed;

  Result({@required this.onResetPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
            child: Text(
              '¡Felicidades has terminado este nivel!',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              onResetPressed();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Options()));
            },
            child:
                Text('Regresar', style: Theme.of(context).textTheme.headline3),
          )
        ],
      ),
    );
  }
}
