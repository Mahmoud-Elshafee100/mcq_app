import 'dart:math';

import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:mcq_app/Data/QuestionData.dart';
import 'package:mcq_app/Data/QuestionData.dart';
import 'package:mcq_app/Model/NamedIDModel.dart';
import 'package:mcq_app/Pages/ResultPage.dart';
import 'package:mcq_app/Widgets/TextWidget.dart';


class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  int count=0,result =0,index =0;
  List m_questiondata = QuestionData.q_data;
  NamedIDModel _verticalGroupValue;
  String Selected_answer="";
  final _random = new Random();
  List<String> previous_Selected=new List<String>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    random();
  }

  /*calculate result of chice*/
  void CalcResult(NamedIDModel m_answers)
  {
    if(m_questiondata[index].RightAnswer.toString() == m_answers.ID.toString())
    {
      result++;
    }

  }

  /*bonus code*/

  void random(){
    while(true) {
      int x = _random.nextInt(m_questiondata.length);
      //print("x : ${x.toString()}");
      if (! previous_Selected.contains(x.toString())) {
        index = x;
        previous_Selected.add(index.toString());
        break;
      }

      //print(previous_Selected.toString());
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Questions"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextWidget(text: m_questiondata[index].QuestionTitle.toString(),),
            SizedBox(height: 30,),
            AnswersWidget(m_questiondata[index].Answers),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                nextStep();
              },
                child: Icon(Icons.arrow_forward_ios,size: 30,color: Colors.black,)
            )

          ],
        ),
      ),
    );
  }

  /*decide next step when click next*/

  void nextStep()
  {
    if(Selected_answer.length>0)
    {
      CalcResult(_verticalGroupValue);
      if(count >= m_questiondata.length-1)
      {

        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Resultpage(result.toString())));
      }
      else
      {
        count++;
        random();
        Selected_answer="";
      }
    }

    setState(() {});
  }

  /*widget of RadioGroup of choices*/

  Widget AnswersWidget(List<NamedIDModel> answers_data){
    return
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RadioGroup<NamedIDModel>.builder(
              groupValue: _verticalGroupValue,
              onChanged: (value) =>
                  setState(() {
                    _verticalGroupValue = value;
                    Selected_answer = value.ID.toString();
                  }),
              items: answers_data,
              direction: Axis.vertical,
              itemBuilder: (item) =>
                  RadioButtonBuilder(
                    item.name.toString(),
                    textPosition: RadioButtonTextPosition.right,

                  ),
            ),

          ],

    );
  }
}
