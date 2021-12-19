import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class MigrationQuiz {

  var images = [ "the great migration", "women during migration", "trains", "people killed", "camps for migrants"
  ];

  var questions = [
    "Why this migration is known as ‘the Great Migration’.",
    "How were women treated?",
    "Mode of Transport during migration",
    "How many people died during migration?",
    "Stayed in camps with inadequate facilities and in destroyed buildings."
  ];

  var choices = [
    ["Biggest displacement in Human History", "Large number of people killed", "Properties were damaged", ],
    ["Killed", "Forced to marry the people from opposite faith", "Kidnapped",],
    ["Cars", "Aeroplanes", "Bullock carts and trains", ],
    ["1 million", "2 million", "5 million"],
    ["Migrants", "Muslim Leaders", "Women",],

  ];
  var correctAnswers = [
    "Biggest displacement in Human History", "Forced to marry the people from opposite faith", "Bullock carts and trains",
    "2 million", "Migrants"
  ];
}
var finalScore = 0;
var questionNumber = 0;
var quiz = new MigrationQuiz();






class greatMigration extends StatefulWidget {

  static const String id = 'greatMigration';

  @override
  State<StatefulWidget> createState() {
    return new greatMigrationState();
  }
}
class greatMigrationState extends State<greatMigration> {
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

              new Padding(padding: EdgeInsets.all(10.0)),
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
              new Padding(padding: EdgeInsets.all(8.0)),
              new Image.asset(
                "assets/images/new/${quiz.images[questionNumber]}.jpeg",
                width: 300,
                height: 300,
              ),
              new Padding(padding: EdgeInsets.all(8.0)),
              new Text(quiz.questions[questionNumber],
                style: new TextStyle(
                  fontSize: 20.0,
                ),),
              new Padding(padding: EdgeInsets.all(8.0)),
              new Column(
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

              // new Padding(padding: EdgeInsets.all(8.0)),
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

                ],
              ),
              // SizedBox(50),
              new Padding(padding: EdgeInsets.fromLTRB(0,10,0,0)),
              new Container(
                alignment: Alignment.bottomCenter,
                child: new MaterialButton(
                  color: Colors.red,
                  minWidth: 240.0,
                  height: 40.0,
                  onPressed: resetQuiz,
//TODO: Quit button should navigate to content page.
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

              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "humanRights");
                    },
                  child: Text("Continue"))

            ],

          ),
        ),


      ),);
  }
}
