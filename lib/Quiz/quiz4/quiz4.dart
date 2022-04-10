import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HistoryQuiz {

  //Provinces
  var images = [ "garden.jpg", "ludo.jpeg", "sibi.jpeg", "khybar.jpeg", "Shahabdul.jpeg"
  ];

  var questions = [
    "_______ city is famous for its gardens.",
    "Regional games like kabbadi, wrestling, ludo are played in ______ .",
    "Sibi Mela is celebrated in ________",
    "Khybar Pass is a famous landmark of ________ province.",
    "Shah Abdul Latif Bhattai's festival is celebrated in _________."
  ];

  var choices = [
    ["Karachi", "Lahore", "Peshawar", "Quetta"],
    ["Sindh", "Balochistan", "Punjab", "KPK"],
    ["Balochistan", "KPK", "Punjab", "Sindh"],
    ["Sindh", "Balochistan", "Punjab", "KPK"],
    ["Punjab", "KPK", "Balochistan", "Sindh"],

  ];
  var correctAnswers = [
    "Lahore", "Punjab", "Balochistan", "KPK", "Sindh"
  ];
}
var finalScore = 0;
var questionNumber = 0;
var quiz = new HistoryQuiz();






class Quiz4 extends StatefulWidget {
  
  static const String id = "Quiz4";
  
  @override
  State<StatefulWidget> createState() {
    return new Quiz4State();
  }
}
class Quiz4State extends State<Quiz4> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: new Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          child: new Column(
            children: <Widget> [

              new Padding(padding: EdgeInsets.all(20.0)),
              new Container(
                alignment: Alignment.centerRight,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("Question ${questionNumber + 1} of ${quiz.questions.length}",
                      style: new TextStyle(
                          fontSize: 22.0
                      ),),

                    new Text("Score: $finalScore",
                      style: new TextStyle(
                          fontSize: 22.0
                      ),),
                  ],
                ),
              ),

              //image
              new Padding(padding: EdgeInsets.all(10.0)),
              new Image.asset(
                  "assets/images/quiz4/${quiz.images[questionNumber]}"
              ),
              new Padding(padding: EdgeInsets.all(10.0)),
              new Text(quiz.questions[questionNumber],
                style: new TextStyle(
                  fontSize: 20.0,
                ),),
              new Padding(padding: EdgeInsets.all(10.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  //button1


                  new MaterialButton(
                    minWidth: 120.0,
                    color: Colors.blueGrey,
                    onPressed: (){
                      if(quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        finalScore++;
                      }else{
                        debugPrint("Wrong");
                      }
                      updateQuestion();
                    },
                    child: new Text(quiz.choices[questionNumber][0],
                      style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),),
                  ),
                  //button 2
                  new MaterialButton(
                    minWidth: 120.0,
                    color: Colors.blueGrey,
                    onPressed: (){

                      if(quiz.choices[questionNumber][1] == quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        finalScore++;
                      }else{
                        debugPrint("Wrong");
                      }
                      updateQuestion();
                    },
                    child: new Text(quiz.choices[questionNumber][1],
                      style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),),
                  ),
                ],
              ),

              new Padding(padding: EdgeInsets.all(10.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  //button3


                  new MaterialButton(
                    minWidth: 120.0,
                    color: Colors.blueGrey,
                    onPressed: (){
                      if(quiz.choices[questionNumber][2] == quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        finalScore++;
                      }else{
                        debugPrint("Wrong");
                      }
                      updateQuestion();
                    },
                    child: new Text(quiz.choices[questionNumber][2],
                      style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),),
                  ),
                  //button 4
                  new MaterialButton(
                    minWidth: 120.0,
                    color: Colors.blueGrey,
                    onPressed: (){

                      if(quiz.choices[questionNumber][3] == quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        finalScore++;
                      }else{
                        debugPrint("Wrong");
                      }
                      updateQuestion();
                    },
                    child: new Text(quiz.choices[questionNumber][3],
                      // overflow: TextOverflow.ellipsis,
                      // maxLines: 1,
                      style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),),
                  ),
                ],
              ),

              //new Padding(padding: EdgeInsets.all(10.0)),
              new Container(
                alignment: Alignment.bottomCenter,
                child: new MaterialButton(
                  color: Colors.red,
                  minWidth: 240.0,
                  height: 40.0,
                  onPressed: resetQuiz,
                  child: new Text("Quit",
                    style: new TextStyle(
                        fontSize: 18.0,
                        color: Colors.white
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void resetQuiz(){
    setState(() {
      Navigator.of(context).pushNamedAndRemoveUntil('Content', (Route<dynamic> route) => false);
      finalScore = 0;
      questionNumber = 0;
    });
  }





  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => new Summary(score: finalScore)));
      } else {
        questionNumber++;
      }
    });
  }}
class Summary extends StatelessWidget{
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Final Score: $score",
                style: new TextStyle(
                    fontSize: 35.0
                ),),

              new Padding(padding: EdgeInsets.all(30.0)),

              new MaterialButton(
                color: Colors.red,
                onPressed: (){
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.of(context).pushNamedAndRemoveUntil('Quiz4', (Route<dynamic> route) => false);
                },
                child: new Text("Reset Quiz",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),),
              MaterialButton(
                color: Colors.blue,
                onPressed: (){
                  questionNumber = 0;
                  finalScore = 0;

                  Navigator.of(context).pushNamedAndRemoveUntil('Content', (Route<dynamic> route) => false);
                },
                child: new Text("Continue",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                  ),),)

            ],

          ),
        ),


      ),);
  }
}
