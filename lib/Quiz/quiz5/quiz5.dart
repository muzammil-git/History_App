import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HistoryQuiz {

  //Human & constitional Rights
  var images = [ "humanrights.jpeg", "UN.jpeg", "constitution.jpeg", "childlabour.jpeg", "vote.png"
  ];

  var questions = [
    "All Human beings are born with some basic freedoms which are universally known as __________.",
    "Which organisation is working to protect Human Rights in the World?",
    "The Current constitution of Pakistan was made in _________.",
    "Farhan is 10 years old and is forced to work in a factory. Which right is being affected?",
    "Salman has just turned 18. Now, he can vote in the upcoming elections. Identify the relevant constitutional right?"
  ];

  var choices = [
    ["Workers Rights", "Citizens' Rights", "People's Rights", "Human Rights"],
    ["United Nations", "World Bank", "Group of Seven", "Latin Union"],
    ["1948", "1956", "1962", "1973"],
    ["Right to Live", "Equality of Citizens", "Political Freedom", "Forced Labour"],
    ["Right to Live", "Political Freedom", "Equality of Citizens", "Forced Labour"],

  ];
  var correctAnswers = [
    "Human Rights", "United Nations", "1973", "Forced Labour", "Political Freedom"
  ];
}
var finalScore = 0;
var questionNumber = 0;
var quiz = new HistoryQuiz();






class Quiz5 extends StatefulWidget {

  static const id = "Quiz5";

  @override
  State<StatefulWidget> createState() {
    return new Quiz5State();
  }
}
class Quiz5State extends State<Quiz5> {
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
              new Padding(padding: EdgeInsets.all(02.0)),
              SizedBox(
                height: 260,

                child: new Image.asset(
                    "assets/images/quiz5/${quiz.images[questionNumber]}",
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
      Navigator.pop(context);
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
                  Navigator.of(context).pushNamedAndRemoveUntil('Quiz5', (Route<dynamic> route) => false);

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
                child: new Text("Done",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),
              ),


              //TODO: Navigate this button to content screen
             /* MaterialButton(
                color: Colors.green,
                onPressed: (){
                  questionNumber = 0;
                  finalScore = 0;
                  // Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz1()));

                  Navigator.of(context).pushNamedAndRemoveUntil('Quiz', (Route<dynamic> route) => false);
                },
                child: new Text("Start Quiz 2",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),)*/

            ],

          ),
        ),


      ),);
  }
}
