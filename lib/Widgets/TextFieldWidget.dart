import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  var controller_text;
  bool controller_validate;
  var input_type;

  TextFieldWidget({this.controller_text,this.controller_validate,this.input_type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        controller: controller_text,
        obscureText: false,
        keyboardType:input_type ,
        decoration: InputDecoration(
            errorText: controller_validate ? 'please enter your name !' : null,
            border: InputBorder.none,
            fillColor: Color(0xfff3f3f4),
            filled: true),
      ),
    );
  }
}
