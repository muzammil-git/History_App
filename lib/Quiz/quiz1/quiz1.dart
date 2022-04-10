import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HistoryQuiz {

  var images = [ "mughalrule", "shalimargardens", "twonations", "uni", "war"
  ];

  var questions = [
    "Mughals ruled Subcontinent for about _______ years.",
    "Taj Mehal, Lal Qila, Jamia Masjid and Shalimar Gardens are some magnificent buildings of his rule.",
    "Who gave the idea of a separate state for Muslims?",
    "________ founded many schools and colleges to educate the Muslims of the Subcontinent.",
    "The War of Independence 1857 was the first major dispute between ___________ in the Subcontinent."
  ];

  var choices = [
    ["200", "300", "400", "500"],
    ["Akbar", "Shah Jahan", "Aurangzeb", "Bahadur Shah Zafar"],
    ["Fatima Jinnah", "Quaid-e-Azam", "Allama Iqbal", "Chaudhry Rehmat Ali"],
    ["Quaid-e-Azam", "Agha Khan", "M.Ali Johar", "Sir Syed Ahmed"],
    ["Muslims & British", "Sikhs & Hindus", "Hindus & Muslims", "Hindus & British"],

  ];
  var correctAnswers = [
     "300", "Shah Jahan", "Allama Iqbal", "Sir Syed Ahmed", "Muslims and British"
  ];
}
 var finalScore = 0;
 var questionNumber = 0;
 var quiz = new HistoryQuiz();






class Quiz1 extends StatefulWidget {

  static const String id = 'Quiz1';

  @override
  State<StatefulWidget> createState() {
    return new Quiz1State();
  }
}
class Quiz1State extends State<Quiz1> {
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
                  height: 250,
                  child: new Image.asset(
                    "assets/images/quiz1/${quiz.images[questionNumber]}.jpg"
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
               // SizedBox(50),
               new Padding(padding: EdgeInsets.fromLTRB(0,40,0,0)),
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

              new Padding(padding: EdgeInsets.all(30.0)),

                 new MaterialButton(
                  color: Colors.red,
                    onPressed: (){
                   questionNumber = 0;
                   finalScore = 0;
                  // Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz1()));

                   Navigator.of(context).pushNamedAndRemoveUntil('Quiz1', (Route<dynamic> route) => false);
                    },
                     child: new Text("Reset Quiz",
                    style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.white
                   ),),),

               //Move to Quiz 2
               MaterialButton(
                 color: Colors.green,
                 onPressed: (){
                   questionNumber = 0;
                   finalScore = 0;
                   // Navigator.pop(context);
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz1()));

                   Navigator.of(context).pushNamedAndRemoveUntil('Quiz2', (Route<dynamic> route) => false);
                 },
                 child: new Text("Start Quiz 2",
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
