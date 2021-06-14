import 'package:flutter/material.dart';

class ImagenEjemplo extends StatelessWidget {
  final String imagenEjemplo;
  const ImagenEjemplo({Key key, @required this.imagenEjemplo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Image.asset(
        imagenEjemplo,
        fit: BoxFit.contain,
      ),
    );
  }
}
