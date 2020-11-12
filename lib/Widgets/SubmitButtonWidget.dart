import 'package:flutter/material.dart';


class SubmitButtonWidget extends StatelessWidget {
  String text;

  SubmitButtonWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: MediaQuery.of(context).size.width-150,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff0199D8), Color(0xff0172AC)])),
        child: Text(
          text,
          style: TextStyle(fontSize: 15, color: Colors.white,),
        ),
      );
  }
}
