import 'dart:collection';

import 'package:flutter/material.dart';

class ContinentMap extends StatefulWidget {
  //Geography

  static const String id = "Continent";

  @override
  _ContinentMapState createState() => _ContinentMapState();
}

class _ContinentMapState extends State<ContinentMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WORLD MAP'),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: (8.0),
                    top: (20),
                    right: (8.0),
                    bottom: (20),
                  ),
                  child: Text(
                    'DRAG A GREEN CIRCLE ON A CONTINENT IN THE PICTURE BELOW AND DROP ON A SQUARE YOU THINK CONTAINS THE CORRECT NAME OF THE CONTINENT.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Stack(
                  children: [
                    Image.asset('assets/images/Map/continent.jpg'),
                    //1
                    Positioned(top: 50, left: 25, child: draggable1()),
                    //2
                    Positioned(top: 200, left: 130, child: draggable2()),
                    //3
                    Positioned(top: 35, left: 370, child: draggable3()),
                    //4
                    Positioned(top: 50, left: 230, child: draggable4()),
                    //5
                    Positioned(top: 180, left: 220, child: draggable5()),
                    //6
                    Positioned(bottom: 10, right: 110, child: draggable6()),
                    //7
                    Positioned(top: 200, right: 25, child: draggable7()),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    dragtarget1(),
                    SizedBox(
                      width: 30,
                    ),
                    dragtarget2(),
                    SizedBox(
                      width: 30,
                    ),
                    dragtarget3(),
                    SizedBox(
                      width: 30,
                    ),
                    dragtarget6(),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    dragtarget4(),
                    SizedBox(
                      width: 30,
                    ),
                    dragtarget5(),
                    SizedBox(
                      width: 30,
                    ),
                    dragtarget7()
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              'Content', (Route<dynamic> route) => false);
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            primary: Colors.redAccent),
                        child: Text('Quit'),
                      ),

                    ),
                    Container(
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              'Quiz2', (Route<dynamic> route) => false);
                          print('Done');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            onPrimary: Colors.white,
                            textStyle: TextStyle(
                                letterSpacing: 0.5,
                                fontFamily: "Bold",
                                fontSize: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: Text('Continue'),
                      ),
                      // onPressed: () {
                      //   Navigator.of(context).pushNamedAndRemoveUntil(
                      //       'Quiz2', (Route<dynamic> route) => false);
                      //   print('Done');
                      // },
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

// TODO center text widgets
//TODO wrap in expanded widget
class draggable1 extends StatefulWidget {
  @override
  _draggable1State createState() => _draggable1State();
}

class _draggable1State extends State<draggable1> {
  bool accepted1 = false;
  final data = 1;
  bool isSuccessful = false;
  @override
  Widget build(BuildContext context) {
    Widget first = Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target1 = Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.lightGreenAccent,
      ),
      child: Column(
        children: [
          Text(
            'North America',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          accepted1 == true
              ? Center(
                  child: first,
                )
              : Container(),
        ],
      ),
    );
    return Draggable<num>(
      data: 1,
      child: isSuccessful == true ? Container() : first,
      feedback: Container(
        width: 30,
        height: 30,
        color: Colors.grey,
      ),
      childWhenDragging: Container(),
      onDragEnd: (data) {
        setState(() {
          isSuccessful = data.wasAccepted;
        });
      },
    );
  }
}

class dragtarget1 extends StatefulWidget {
  @override
  _dragtarget1State createState() => _dragtarget1State();
}

class _dragtarget1State extends State<dragtarget1> {
  bool accepted1 = false;
  final data = 1;
  @override
  Widget build(BuildContext context) {
    Widget first = Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target1 = Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.lightGreenAccent,
      ),
      child: Column(
        children: [
          Text(
            'North America',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          accepted1 == true
              ? Center(
                  child: first,
                )
              : Container(),
        ],
      ),
    );
    return DragTarget<num>(
      builder: (context, candidates, rejects) {
        return target1;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(() {
          accepted1 = true;
        });
      },
    );
  }
}

//2c
class draggable2 extends StatefulWidget {
  @override
  _draggable2State createState() => _draggable2State();
}

class _draggable2State extends State<draggable2> {
  bool accepted2 = false;
  final data = 'pak';
  bool isSuccessful = false;
  @override
  Widget build(BuildContext context) {
    Widget second = Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target2 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'South America',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted2 == true
              ? Center(
                  child: second,
                )
              : Container()
        ]));
    return Draggable<String>(
      data: 'pak',
      child: isSuccessful == true ? Container() : second,
      feedback: Container(
        width: 30,
        height: 30,
        color: Colors.grey,
      ),
      childWhenDragging: Container(),
      onDragEnd: (data) {
        setState(() {
          isSuccessful = data.wasAccepted;
        });
      },
    );
  }
}

class dragtarget2 extends StatefulWidget {
  @override
  _dragtarget2State createState() => _dragtarget2State();
}

class _dragtarget2State extends State<dragtarget2> {
  bool accepted2 = false;
  final data = 'pak';
  @override
  Widget build(BuildContext context) {
    Widget second = Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target2 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'South America',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted2 == true
              ? Center(
                  child: second,
                )
              : Container()
        ]));
    return DragTarget<String>(
      builder: (context, candidates, rejects) {
        return target2;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(() {
          accepted2 = true;
        });
      },
    );
  }
}

//3

class draggable3 extends StatefulWidget {
  @override
  _draggable3State createState() => _draggable3State();
}

class _draggable3State extends State<draggable3> {
  bool accepted3 = false;
  final data = true;
  bool isSuccessful = false;
  @override
  Widget build(BuildContext context) {
    Widget third = Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target3 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Asia',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted3 == true
              ? Center(
                  child: third,
                )
              : Container()
        ]));
    return Draggable<bool>(
      data: true,
      child: isSuccessful == true ? Container() : third,
      feedback: Container(
        width: 30,
        height: 30,
        color: Colors.grey,
      ),
      childWhenDragging: Container(),
      onDragEnd: (data) {
        setState(() {
          isSuccessful = data.wasAccepted;
        });
      },
    );
  }
}

class dragtarget3 extends StatefulWidget {
  @override
  _dragtarget3State createState() => _dragtarget3State();
}

class _dragtarget3State extends State<dragtarget3> {
  bool accepted3 = false;
  final data = true;
  @override
  Widget build(BuildContext context) {
    Widget third = Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target3 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Asia',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted3 == true
              ? Center(
                  child: third,
                )
              : Container()
        ]));
    return DragTarget<bool>(
      builder: (context, candidates, rejects) {
        return target3;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(() {
          accepted3 = true;
        });
      },
    );
  }
}

//4
class draggable4 extends StatefulWidget {
  @override
  _draggable4State createState() => _draggable4State();
}

class _draggable4State extends State<draggable4> {
  bool accepted4 = false;
  final data = 2.5;
  bool isSuccessful = false;
  @override
  Widget build(BuildContext context) {
    Widget fourth = Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target4 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Europe',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted4 == true
              ? Center(
                  child: fourth,
                )
              : Container()
        ]));
    return Draggable<double>(
      data: 2.5,
      child: isSuccessful == true ? Container() : fourth,
      feedback: Container(
        width: 30,
        height: 30,
        color: Colors.grey,
      ),
      childWhenDragging: Container(),
      onDragEnd: (data) {
        setState(() {
          isSuccessful = data.wasAccepted;
        });
      },
    );
  }
}

class dragtarget4 extends StatefulWidget {
  @override
  _dragtarget4State createState() => _dragtarget4State();
}

class _dragtarget4State extends State<dragtarget4> {
  bool accepted4 = false;
  @override
  Widget build(BuildContext context) {
    Widget fourth = Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target4 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Europe',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted4 == true
              ? Center(
                  child: fourth,
                )
              : Container()
        ]));
    return DragTarget<double>(
      builder: (context, candidates, rejects) {
        return target4;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(() {
          accepted4 = true;
        });
      },
    );
  }
}

//5
class draggable5 extends StatefulWidget {
  @override
  _draggable5State createState() => _draggable5State();
}

class _draggable5State extends State<draggable5> {
  bool accepted5 = false;
  final data = Colors.blue;
  bool isSuccessful = false;
  @override
  Widget build(BuildContext context) {
    Widget fifth = Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target5 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Africa',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted5 == true
              ? Center(
                  child: fifth,
                )
              : Container()
        ]));
    return Draggable<Color>(
      data: Colors.blue,
      child: isSuccessful == true ? Container() : fifth,
      feedback: Container(
        width: 30,
        height: 30,
        color: Colors.grey,
      ),
      childWhenDragging: Container(),
      onDragEnd: (data) {
        setState(() {
          isSuccessful = data.wasAccepted;
        });
      },
    );
  }
}

class dragtarget5 extends StatefulWidget {
  @override
  _dragtarget5State createState() => _dragtarget5State();
}

class _dragtarget5State extends State<dragtarget5> {
  bool accepted5 = false;
  final data = Colors.blue;

  @override
  Widget build(BuildContext context) {
    Widget fifth = Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target5 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Africa',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted5 == true
              ? Center(
                  child: fifth,
                )
              : Container()
        ]));
    return DragTarget<Color>(
      builder: (context, candidates, rejects) {
        return target5;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(() {
          accepted5 = true;
        });
      },
    );
  }
}

//6
class draggable6 extends StatefulWidget {
  @override
  _draggable6State createState() => _draggable6State();
}

class _draggable6State extends State<draggable6> {
  bool accepted6 = false;
  final data = 2;
  bool isSuccessful = false;
  @override
  Widget build(BuildContext context) {
    Widget sixth = Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target6 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Antarctica',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted6 == true
              ? Center(
                  child: sixth,
                )
              : Container()
        ]));

    return Draggable<int>(
      data: 2,
      child: isSuccessful == true ? Container() : sixth,
      feedback: Container(
        width: 30,
        height: 30,
        color: Colors.grey,
      ),
      childWhenDragging: Container(),
      onDragEnd: (data) {
        setState(() {
          isSuccessful = data.wasAccepted;
        });
      },
    );
  }
}

class dragtarget6 extends StatefulWidget {
  @override
  _dragtarget6State createState() => _dragtarget6State();
}

class _dragtarget6State extends State<dragtarget6> {
  bool accepted6 = false;
  final data = 2;
  @override
  Widget build(BuildContext context) {
    Widget sixth = Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target6 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Antarctica',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted6 == true
              ? Center(
                  child: sixth,
                )
              : Container()
        ]));

    return DragTarget<int>(
      builder: (context, candidates, rejects) {
        return target6;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(() {
          accepted6 = true;
        });
      },
    );
  }
}

class draggable7 extends StatefulWidget {
  @override
  _draggable7State createState() => _draggable7State();
}

class _draggable7State extends State<draggable7> {
  bool accepted7 = false;
  final data = HashMap;
  bool isSuccessful = false;
  @override
  Widget build(BuildContext context) {
    Widget seventh = Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target7 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Oceania',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted7 == true
              ? Center(
                  child: seventh,
                )
              : Container()
        ]));

    return Draggable<Map>(
      data: HashMap(),
      child: isSuccessful == true ? Container() : seventh,
      feedback: Container(
        width: 30,
        height: 30,
        color: Colors.grey,
      ),
      childWhenDragging: Container(),
      onDragEnd: (data) {
        setState(() {
          isSuccessful = data.wasAccepted;
        });
      },
    );
  }
}

class dragtarget7 extends StatefulWidget {
  @override
  _dragtarget7State createState() => _dragtarget7State();
}

class _dragtarget7State extends State<dragtarget7> {
  bool accepted7 = false;
  final data = HashMap();
  @override
  Widget build(BuildContext context) {
    Widget seventh = Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)));
    Widget target7 = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreenAccent,
        ),
        child: Column(children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Oceania',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          accepted7 == true
              ? Center(
                  child: seventh,
                )
              : Container()



        ]));
    return DragTarget<Map>(
      builder: (context, candidates, rejects) {
        return target7;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(() {
          accepted7 = true;
        });
      },
    );
  }
}
