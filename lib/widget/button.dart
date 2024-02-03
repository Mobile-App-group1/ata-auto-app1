import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Boxbutton extends StatelessWidget {
  Boxbutton(
      {super.key,
      required this.colorbtn,
      required this.namebtn,
      required this.colortext});
  Color colorbtn;
  String namebtn;
  Color colortext;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ButtonBarTheme(
        data: ButtonBarThemeData(),
        child: Container(
            width: width * 0.7,
            height: height * 0.05,
            decoration: BoxDecoration(
                color: colorbtn,
                borderRadius: BorderRadius.circular(width * 0.02)),
            child: Center(
                child: Text(
              namebtn,
              style: TextStyle(
                  color: colortext, fontSize: 18, fontWeight: FontWeight.bold),
            ))));
  }
}
