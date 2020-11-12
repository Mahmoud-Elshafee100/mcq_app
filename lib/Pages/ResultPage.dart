import 'package:flutter/material.dart';
import 'package:mcq_app/Widgets/TextWidget.dart';

class Resultpage extends StatefulWidget {
  String m_result;
  Resultpage(this.m_result);

  @override
  _ResultpageState createState() => _ResultpageState();
}

class _ResultpageState extends State<Resultpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextWidget(text:"Thanks",),

            SizedBox(height: 10,),

            TextWidget(text:"You Result",),

            SizedBox(height: 10,),

            TextWidget(text:"${widget.m_result}  /5",),



          ],
        ),
      ),
    );
  }
}
