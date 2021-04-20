import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PakistanQuiz {

  //Province & cities

  var images = [ "fullname.jpg", "capitalcity.jpeg", "languages.jpeg", "religion.jpeg", "independenceday.jpeg"
  ];

  var questions = [
    "What is the full name of Pakistan?",
    "Which is the capital city of Pakistan?",
    "What is the national Language of Pakistan?",
    "Which religion is followed by the majority of People in Pakistan?",
    "When do Pakistanis celebrate Independence Day?"
  ];

  var choices = [
    ["Islamic Pakistan", "Republic of Pakistan", "Pakistan", "Islamic Republic of Pakistan"],
    ["Lahore", "Karachi", "Islamabad", "Peshawar"],
    ["Pashto", "Urdu", "Balochi", "Punjabi"],
    ["Islam", "Christianity", "Hinduism", "Buddhism"],
    ["12th August", "13th August", "14th August", "15th August"],

  ];
  var correctAnswers = [
    "Islamic Republic of Pakistan", "Islamabad", "Urdu", "Islam", "14th August"
  ];
}
var finalScore = 0;
var questionNumber = 0;
var quiz = new PakistanQuiz();



class Quiz3 extends StatefulWidget {

  static const String id = "Quiz3";

  @override
  State<StatefulWidget> createState() {
    return new Quiz3State();
  }
}
class Quiz3State extends State<Quiz3> {
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
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: new Image.asset(
                    "assets/images/quiz3/${quiz.images[questionNumber]}",
                  fit: BoxFit.fitWidth,
                ),
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
                          fontSize: 17.0,
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
                          fontSize: 17.0,
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
                          fontSize: 17.0,
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
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: new TextStyle(
                          fontSize: 17.0,
                          color: Colors.white
                      ),),
                  ),
                ],
              ),

              new Padding(padding: EdgeInsets.all(10.0)),
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
                  Navigator.of(context).pushNamedAndRemoveUntil('Quiz3', (Route<dynamic> route) => false);

                },
                child: new Text("Reset Quiz",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),),
              MaterialButton(
                color: Colors.green,
                onPressed: (){
                  questionNumber = 0;
                  finalScore = 0;
                  // Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz1()));

                  Navigator.of(context).pushNamedAndRemoveUntil('Quiz4', (Route<dynamic> route) => false);
                },
                child: new Text("Start Quiz 4",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),)

            ],

          ),
        ),


      ),);
  }
}
