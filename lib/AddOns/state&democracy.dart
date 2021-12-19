import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//todo remove the 4th button in human rights
//todo change some pictures that are too obvious
class StateQuiz {

  var images = [ "screenshot.png",
    "rights of people.png",
    "Pakistan.jpeg",
    "bangladesh.png",
    "government.jpg",
    'a_king_or_queen.jpeg',
    'powerpeople.png',
    'voting.jpg',
    'Sovereignty2.jpeg',
  ];

  var questions = [
    "Area, Population, form of government, A supreme power, are elements of",
    "To protect the rights of people and its territory is a responsibility of",
    "Official name of Pakistan",
    "East Pakistan is now known as ?",
    "A group of people having the power to control the country.",
    'Who holds the power in a Monarchy',
    'Who holds power in a Democracy',
    'What is the age limit to cast vote in Pakistan ',
    'What is the meaning of sovereignty---- The Supreme Power',
  ];

  var choices = [
    ["Judiciary", "A monarchy", "A state", ],
    ["Police", "State", "Army",],
    ["Islamic Emirates of Pakistan", "The People's Republic of Pakistan", "Islamic Republic of Pakistan", ],
    ["Bangladesh", "Nepal", "Sri lanka"],
    ["Government", "Country", "Province",],
    ['King or Queen', 'President','Prime Minister' ],
    ['People','President','Military'],
    ['18 Years','16 Years','19 Years'],
    ['The Supreme Power','The Freedom', 'Right to Vote']
  ];
  var correctAnswers = [
    "A state", "State", "Islamic Republic of Pakistan",
    "Bangladesh", "Government",'King or Queen','Democracy','18 Years','The Supreme Power'
  ];
}
var finalScore = 0;
var questionNumber = 0;
var quiz = new StateQuiz();



class statesDemocracy extends StatefulWidget {

  static const String id = 'statesDemocracy';
  @override
  State<StatefulWidget> createState() {
    return new statesDemocracyState();
  }
}

class statesDemocracyState extends State<statesDemocracy> {
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
              //image's location shouldbe made clear here.
              new Image.asset(
                "assets/images/new/${quiz.images[questionNumber]}",
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
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreenAccent,
                  onPrimary: Colors.black,
                ),
                  onPressed: (){

                    Navigator.pushNamed(context, "Content");
              }, child: Text("Finish")),


            ],

          ),
        ),


      ),);
  }
}
