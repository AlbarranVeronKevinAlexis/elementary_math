import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressed;
  final String image;

  Answer({@required this.onPressed, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.asset(image, width: 100.0, height: 100.0),
          ),
        ),
      ),
    );
  }
}
