import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {

  String text;
  TextWidget({this.text});


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,),
      textAlign: TextAlign.left,);
  }
}
