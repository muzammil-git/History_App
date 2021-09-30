import 'dart:math';
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
// class forEach extends StatefulWidget {
//
//
//   @override
//   _forEachState createState() => _forEachState();
// }
//
//
// class _forEachState extends State<forEach> {
//   List<friend> Friends =
//    [ friend(name: 'Farwa', color: 0xFFFFF8E1),
//     friend(name: 'Sajjad', color: 0xFFFCE4EC),
//     friend(name: 'Jaffer', color:0XFFFFFDE7)
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title:Text('forEach Method'),
//           backgroundColor: Colors.deepPurple,
//         ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.deepPurple,
//           child: Icon(Icons.info_outline_sharp),
//           onPressed: (){
//             Friends.forEach((friend) {
//               friend.color=(Random().nextDouble()* 0xFFFFFFFF).toInt();
//             });
//             setState(() {
//
//             });
//           },
//
//         ),
//
//         body: ListView.separated(itemBuilder: (context, index){
//           return Container(
//             color: Color(Friends[index].color),
//             child: ListTile(
//               title:Text(Friends[index].name),
//
//             ),
//           );
//         },
//             separatorBuilder: (context, index){
//           return Divider();
//             },
//             itemCount: Friends.length
//         ),
//       ),
//     );
//   }
// }
//
// class friend {
// String name;
// int color;
// friend({this.name, this.color});
// }
//1
//TODO make dragtarget round
class Dragtarget1 extends StatefulWidget {
  @override
  _Dragtarget1State createState() => _Dragtarget1State();
}

class _Dragtarget1State extends State<Dragtarget1> {
  bool accepted1 = false;

  @override
  Widget build(BuildContext context) {
    Widget tile1 = Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.12),
                color: Colors.pink[200],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Card(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Smallest',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepPurple),
                  ),
                ),
                accepted1 == true
                    ? Row(children: [
                        Text(
                          'CORRECT',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.deepPurple),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 40,
                        ),
                      ])
                    : Container()
              ]),
            )));

    return DragTarget<int>(
      builder: (context, candidates, rejects) {
        return tile1;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(
          () {
            accepted1 = true;
          },
        );
      },
    );
  }
}

//2
class DragTargetWidget2 extends StatefulWidget {
  @override
  _DragTargetWidgetState createState() => _DragTargetWidgetState();
}

class _DragTargetWidgetState extends State<DragTargetWidget2> {
  bool accepted2 = false;

  @override
  Widget build(BuildContext context) {
    Widget tile2 = Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.12),
                color: Colors.purple[100],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Card(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Smaller',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepPurple),
                  ),
                ),
                accepted2 == true
                    ? Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'CORRECT',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.deepPurple),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40,
                              ),
                            ]),
                      )
                    : Container()
              ]),
            )));
    return DragTarget<double>(
      builder: (context, candidates, rejects) {
        return tile2;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(
          () {
            accepted2 = true;
          },
        );
      },
    );
    //
  }
}
//3

class DragTarget3 extends StatefulWidget {
  @override
  _DragTarget3State createState() => _DragTarget3State();
}

class _DragTarget3State extends State<DragTarget3> {
  bool accepted3 = false;
  @override
  Widget build(BuildContext context) {
    Widget tile3 = Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.12),
                color: Colors.purpleAccent[100],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Card(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Larger',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepPurple),
                  ),
                ),
                accepted3 == true
                    ? Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'CORRECT',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.deepPurple),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40,
                              ),
                            ]),
                      )
                    : Container()
              ]),
            )));
    return DragTarget<Color>(
      builder: (context, candidates, rejects) {
        return tile3;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(
          () {
            accepted3 = true;
          },
        );
      },
    );
  }
}

//4

class DragTarget4 extends StatefulWidget {
  @override
  _DragTarget4State createState() => _DragTarget4State();
}

class _DragTarget4State extends State<DragTarget4> {
  bool accepted4 = false;
  @override
  Widget build(BuildContext context) {
    Widget tile4 = Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
            height: 60,
            width: 400,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.12),
                color: Colors.redAccent[200],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Card(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Largest',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepPurple),
                  ),
                ),
                accepted4 == true
                    ? Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'CORRECT',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.deepPurple),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40,
                              ),
                            ]),
                      )
                    : Container()
              ]),
            )));
    return DragTarget<bool>(
      builder: (context, candidates, rejects) {
        return tile4;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(
          () {
            accepted4 = true;
          },
        );
      },
    );
  }
}

//5
//TODO use shuffle, replace dragtarget with correct widget: remove expanded widgets wrapping the draggables and dragtargets in a row, donot hardcode the dragtarget5.
class DragTarget5 extends StatefulWidget {
  @override
  _DragTarget5State createState() => _DragTarget5State();
}

class _DragTarget5State extends State<DragTarget5> {
  bool accepted5 = false;
  final data = int;

  //var targets= ['target5'];
  @override
  Widget build(BuildContext context) {
    Widget tile5 = Container(
      width: 200,
      height: 100,
      color: Colors.blue,
      child: Row(children: [
        Text('largest'),
        accepted5 == true
            ? Center(
                child: Icon(
                  Icons.done_outline_rounded,
                  color: Colors.green,
                  size: 40,
                ),
              )
            : Container()
      ]),
    );
    return DragTarget<int>(
      builder: (context, candidates, rejects) {
        return tile5;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(
          () {
            accepted5 = true;
          },
        );
      },
    );
  }
}

//6
class DragTarget6 extends StatefulWidget {
  @override
  _DragTarget6State createState() => _DragTarget6State();
}

class _DragTarget6State extends State<DragTarget6> {
  bool accepted6 = false;

  @override
  Widget build(BuildContext context) {
    Widget tile6 = Container(
      width: 200,
      height: 100,
      color: Colors.blue,
      child: Row(children: [
        Text('largest'),
        accepted6 == true
            ? Center(
                child: Icon(
                  Icons.done_outline_rounded,
                  color: Colors.green,
                  size: 40,
                ),
              )
            : Container()
      ]),
    );
    return DragTarget<int>(
      builder: (context, candidates, rejects) {
        return tile6;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(
          () {
            accepted6 = true;
          },
        );
      },
    );
  }
}

//7
class DragTarget7 extends StatefulWidget {
  @override
  _DragTarget7State createState() => _DragTarget7State();
}

class _DragTarget7State extends State<DragTarget7> {
  bool accepted7 = false;
  final data = HashMap();
  @override
  Widget build(BuildContext context) {
    Widget tile7 = Container(
      width: 200,
      height: 100,
      color: Colors.blue,
      child: Row(children: [
        Text('largest'),
        accepted7 == true
            ? Center(
                child: Icon(
                  Icons.done_outline_rounded,
                  color: Colors.green,
                  size: 40,
                ),
              )
            : Container()
      ]),
    );
    return DragTarget<int>(
      builder: (context, candidates, rejects) {
        return tile7;
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(
          () {
            accepted7 = true;
          },
        );
      },
    );
  }
}
