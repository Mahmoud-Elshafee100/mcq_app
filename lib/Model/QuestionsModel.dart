import 'package:mcq_app/Model/NamedIDModel.dart';

class QuestionsModel{
  String ID;
  String QuestionTitle;
  List<NamedIDModel> Answers;
  String RightAnswer;

  QuestionsModel(this.ID, this.QuestionTitle, this.Answers, this.RightAnswer);

}