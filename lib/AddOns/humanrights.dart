//todo pictures show the answers
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HumanRightsQuiz {

  var images = [
    "cyrus_cylinder copy.jpeg",
    "CYRUS copy.png",
    "socrates-9488126-1-402 copy.jpeg",
    "King John.jpeg",
    "magna carta.jpg",
    "Right to fair Trial.jpeg",
    "machine guns copy.jpeg",
    "alliance2.png",
    "allied-powers.jpeg",
    "central powers.png",
    "Germany.jpeg",
    'people died .jpeg' ,
    "treatyof versailles.jpg",
    'hitler.jpg',
    "people died .jpeg",
    "UDHR.jpeg",
  ];

  var questions = [
    "The first declaration of Human Rights.",
    "Who introduced Revolutionary concept of ‘Religious Tolerance and Individual Freedom’ .",
    "Who wrote Cyropaedia? .",
    "In 1215 who imposed heavy taxes on people?.",
    "Law is Supreme not the King.",
    "A person must be proven guilty before he gets punishment.",
    "Submarines, Machine Guns and poison gas were used .",
    "An agreement to help each other.",
    "During WW1 France, Great Britain, Russia .",
    "During WW1 Germany, Ottoman Empire, Austria .",
    "Which country surrendered during WW1 in 1918.",
    "How many people died during WW1 .",
    "Which treaty ended the WW1 .",
    "A form of govt. where power lies in the hands of a military dictator.",
    "How many people died during WW2 .",
    "To save children from Wars.",
  ];

  var choices = [
    ["The Cyrus Cylinder", "Magna Carta", "Charter of Human Rights", ],
    [ "Shah Jahan", "Cyrus the Great", "Queen Elizabeth"],
    ["Xenophan / Socrates", "King Charles", "Aristotle"],
    ["Lord Mountbatten", "Queen Victoria",  "King John"],
    ["The Cyrus Cylinder","Magna Carta ",  "Constitution",],
    ['A fair Trial','Free Trial','Right to Hearing',],
    ['WW1/ WW2','Vietnam War','Korean War'],
    ['Alliance','Treaty','Accord'],
    ['Allied Powers','Central Powers','NATO'],
    ['League of Nations','Central powers', 'Allied Powers', ],
    ['Germany', 'Britain','Spain',],
    ['1 billion','3 million','8 Million', ],
    ['Treaty of Versailles','Treaty of Paris','The Peace Treaty of Westphalia',],
    [ 'Democracy','Fascism','Communism',],
    ['1 - 2 million','6 - 7 million','30 - 50 Million'],
    ['UN', 'OIC','UDHR']
  ];
  var correctAnswers = [
    "The Cyrus Cylinder", "Cyrus the Great", "Xenophan / Socrates", "King John", "Magna Carta",'A fair Trial',
    'WW1/ WW2','Alliance','Allied Powers','Central powers','Germany','8 Million',
    'Treaty of Versailles','Fascism','30 - 50 Million','UDHR',
  ];
}
var finalScore = 0;
var questionNumber = 0;
var quiz = new HumanRightsQuiz();






class humanRights extends StatefulWidget {

  static const String id = 'humanRights';

  @override
  State<StatefulWidget> createState() {
    return new humanRights1();
  }
}
class humanRights1 extends State<humanRights> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: new Container(
          margin: const EdgeInsets.all(08.0),
          alignment: Alignment.topCenter,
          child: new Column(
            children: <Widget> [

              new Padding(padding: EdgeInsets.all(08.0)),
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
                "assets/images/new/${quiz.images[questionNumber]}",fit: BoxFit.scaleDown,
                width:300,
                height: 300,
              ),
              new Padding(padding: EdgeInsets.all(8.0)),
              new Text(quiz.questions[questionNumber],
                style: new TextStyle(
                  fontSize: 20.0,
                ),),
              new Padding(padding: EdgeInsets.all(8.0)),
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

              new Padding(padding: EdgeInsets.all(8.0)),
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
                      ),
                    ),
                  ),

                ],
              ),
              // SizedBox(50),
              new Padding(padding: EdgeInsets.fromLTRB(0,20,0,0)),
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
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "statesDemocracy");
              }, child: Text("Continue")),


              // new Padding(padding: EdgeInsets.all(30.0)),

              // new MaterialButton(
              //   color: Colors.red,
              //   onPressed: (){
              //     questionNumber = 0;
              //     finalScore = 0;
              //     // Navigator.pop(context);
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz1()));
              //
              //     Navigator.of(context).pushNamedAndRemoveUntil('Quiz1', (Route<dynamic> route) => false);
              //   },
              //   child: new Text("Reset Quiz",
              //     style: new TextStyle(
              //         fontSize: 20.0,
              //         color: Colors.white
              //     ),),),

              //Move to Quiz 2
              // MaterialButton(
              //   color: Colors.green,
              //   onPressed: (){
              //     questionNumber = 0;
              //     finalScore = 0;
              //     // Navigator.pop(context);
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz1()));
              //
              //     Navigator.of(context).pushNamedAndRemoveUntil('Quiz2', (Route<dynamic> route) => false);
              //   },
              //   child: new Text("Start Quiz 2",
              //     style: new TextStyle(
              //         fontSize: 20.0,
              //         color: Colors.white
              //     ),),)

            ],

          ),
        ),


      ),);
  }
}


