import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function onPressed;
  // final String image;

  // Answer({@required this.onPressed, this.image});
  final List<Map<String, Object>> data;
  final Function answerQuestion;
  final BuildContext context1;

  Answer(
      {@required this.data,
      @required this.answerQuestion,
      @required this.context1});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(data.length, (index) {
        return Container(
          child: InkWell(
            onTap: () {
              answerQuestion(data[index]['result'], context1);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.asset(data[index]['image'],
                    width: 100.0, height: 100.0),
              ),
            ),
          ),
        );
      }),
    );
    // Container(
    //   child: InkWell(
    //     // onTap: onPressed,
    //     child: Container(
    //       padding: EdgeInsets.all(10),
    //       child: ClipRRect(
    //           borderRadius: BorderRadius.circular(0.0),
    //           child: Text(data.toString())
    //           //Image.asset(image, width: 100.0, height: 100.0),
    //           ),
    //     ),
    //   ),
    // );
  }
}
