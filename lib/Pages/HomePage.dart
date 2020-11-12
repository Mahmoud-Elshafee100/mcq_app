import 'package:flutter/material.dart';
import 'package:mcq_app/Pages/QuestionPage.dart';
import 'package:mcq_app/Widgets/SubmitButtonWidget.dart';
import 'package:mcq_app/Widgets/TextFieldWidget.dart';
import 'package:mcq_app/Widgets/TextWidget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final name_text = TextEditingController();
  bool name_validate = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextWidget(text: "What's your name ? ",),
            SizedBox(height: 10,),
            TextFieldWidget(controller_text: name_text,controller_validate: name_validate,input_type: TextInputType.text,),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                checkName();
              },
              child: SubmitButtonWidget(text: 'Submit',),
            )

          ],
        ),
      ),
    );
  }

  /*check field is empty or not*/

  void checkName(){
    if(name_text.text.isEmpty)
      {
        setState(() {
          name_validate=true;
        });
      }
    else
      {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => QuestionPage()));
      }
  }
}
