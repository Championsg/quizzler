import 'question.dart';

class QuizBrain {
  List<Question> _questionBank = [
    Question(q:'Penguins have knees',a:true),
    Question(q:'Approximately one quarter of human bones are in the feet',a:false),
    Question(q:'A slug\'s blood is green',a:true),
    Question(q:'Apple pie is American',a:false),
    Question(q:'The hashtag symbol is technically called an octothorpe',a:true),
    Question(q:'The 100 folds in a chef\'s hat represent 100 ways to cook an egg',a:true),
    Question(q:'The longest wedding veil was shorter than 50 football fields',a:false),
    Question(q:'The odds of getting a royal flush are rarer than 1 in a million',a:false),
    Question(q:'Part of USA is located North of Canada',a:true),
    Question(q:'4 times more people speak English as a second language than as a native one',a:true),
  ];
  int _questionNumber = 0;
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }
  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}
