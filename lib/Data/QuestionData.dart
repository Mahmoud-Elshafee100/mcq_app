import 'package:mcq_app/Model/NamedIDModel.dart';
import 'package:mcq_app/Model/QuestionsModel.dart';

class QuestionData{
   static List q_data=[
    QuestionsModel("1","what is the Largest Country in the World by Area ? ",[NamedIDModel("1","USA"),NamedIDModel("2","Russia"),NamedIDModel("3","Canada"),NamedIDModel("4","china"),],"2"),
    QuestionsModel("2","what is the Largest continent in the World by Area ? ",[NamedIDModel("1","Africe"),NamedIDModel("2","Europe"),NamedIDModel("3","Antarctica"),NamedIDModel("4","Asia"),],"4"),
    QuestionsModel("3","what is the currency of England ? ",[NamedIDModel("1","Euro"),NamedIDModel("2","Pound sterling"),NamedIDModel("3","Dinar"),NamedIDModel("4","Dollar"),],"2"),
    QuestionsModel("4"," How many letters are there in the English alphabet ? ",[NamedIDModel("1","25"),NamedIDModel("2","27"),NamedIDModel("3","26"),NamedIDModel("4","28"),],"3"),
    QuestionsModel("5","Which country is called the land of rising sun? ",[NamedIDModel("1","japan"),NamedIDModel("1","china"),NamedIDModel("1","USA"),NamedIDModel("1","Canda"),],"1"),
  ];
}