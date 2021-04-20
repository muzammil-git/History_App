import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//1

class Draggable1 extends StatefulWidget {
  @override
  _Draggable1State createState() => _Draggable1State();
}

class _Draggable1State extends State<Draggable1> {
  bool accepted1= false;
  final data = 'FATIMA JINNAH';

  @override


  Widget build(BuildContext context) {
    Widget first =Container(width: 90, height: 90,
      decoration: BoxDecoration(
        border: Border.all(width:1.5, color: Colors.orange),
      ),
        child:Image.asset('assets/images/heroes/fatimajinnah.jpg', ),

       // fit: BoxFit.contain,

        //Text('FATIMA JINNAH', style: TextStyle(fontWeight: FontWeight.bold),)
        );

    Widget fb = Container(width: 50, height: 50, color: Colors.grey,);

     return accepted1==true? Container() : Draggable<String>(
      maxSimultaneousDrags: 1,
     data: 'FATIMA JINNAH',
      child: first,
      feedback:fb,
      childWhenDragging: Container(),
    );
  }
}

//2
class Draggable2 extends StatefulWidget {
  @override
  _Draggable2State createState() => _Draggable2State();
}

class _Draggable2State extends State<Draggable2> {
  bool accepted2 = false;
  @override
  Widget build(BuildContext context) {

    Widget second =  Container(width: 90, height: 90,
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.orange ),

           ),
        child: Image.asset('assets/images/heroes/Jinnah.jpg',
        fit: BoxFit.contain,)
    );
    Widget target2 =  Container(width: 100, height: 100,color: Colors.greenAccent[50],
        child:  accepted2== true? Center(child: second,) : Container());
    return Draggable<Color>(
      maxSimultaneousDrags: 1,
      child:second,
        data:Colors.blue,
      feedback:  Container(width: 50, height: 50, color: Colors.grey),
      childWhenDragging: Container(),

    );
  }
}
//3
class Draggables3 extends StatefulWidget {
  @override
  _Draggable3State createState() => _Draggable3State();
}

class _Draggable3State extends State<Draggables3> {
 bool accepted3= false;
  @override
  Widget build(BuildContext context) {
    Widget third = Container(width: 80, height: 80,
    decoration: BoxDecoration(border: Border.all(width: 1.5, color: Colors.orange),
    ),
    child: Image.asset('assets/images/heroes/sir.jpg')
    );


    return Draggable<num>(
       data:3,
      child: third,
      feedback:  Container(width: 50, height: 50, color: Colors.grey,),
      childWhenDragging: Container(),
    );
  }
}
//4
class Draggable4 extends StatefulWidget {
  @override
  _Draggable4State createState() => _Draggable4State();
}

class _Draggable4State extends State<Draggable4> {
  bool accepted4 = false;
  @override
  Widget build(BuildContext context) { Widget fourth= Container(
      width: 80, height: 80,
    decoration: BoxDecoration(
      border: Border.all(width: 1.5, color: Colors.orange),
    ),
    child: Image.asset('assets/images/heroes/allama.jpg'));

    return Draggable<bool>(
     data: true ,
      child: fourth,
      feedback:  Container(width: 50, height: 50, color: Colors.grey,),
      childWhenDragging: Container(),
    );
  }
}

//5
class Draggable5 extends StatefulWidget {
  @override
  _Draggable5State createState() => _Draggable5State();
}


class _Draggable5State extends State<Draggable5> {
  bool accepted5 = false;
  final data= int;
  @override
  Widget build(BuildContext context) {
    Widget fifth =  Container(width: 80, height: 80,
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: Colors.orange),

      ),
      child:Image.asset('assets/images/heroes/liaquath.jpg')

    );
    return  Draggable<int>(
      data:1,
      child: fifth,
      feedback: Container(width: 50, height: 50, color: Colors.grey,) ,
      childWhenDragging: Container(),);
  }
}
//6
class Draggable6 extends StatefulWidget {
  @override
  _Draggable6State createState() => _Draggable6State();
}

class _Draggable6State extends State<Draggable6> {
  bool accepted6 = false;
  final data= 2.9;
  @override
  Widget build(BuildContext context) {
    Widget sixth = Container(child:
     Image.asset('assets/images/heroes/molana.jpg'),
      width:80 , height:80 ,
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: Colors.orange),

    ),);
    return Draggable<double>(
      data:2.9,
      child: sixth,
      feedback: Container(width: 50, height: 50, color: Colors.grey,) ,
      childWhenDragging: Container(),
    );
  }
}


class Draggable7 extends StatefulWidget {
  @override
  _Draggable7State createState() => _Draggable7State();
}

class _Draggable7State extends State<Draggable7> {
bool accepted7= false;
  final data=HashMap();
  @override
  Widget build(BuildContext context) {
    Widget seventh = Container(child:
          Image.asset('assets/images/heroes/edhi.jpeg'),
    width: 80, height: 80,
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.orange),

        ));
    return Draggable<Map>(
      data: HashMap(),
      child: seventh,
      feedback:Container(width: 50, height: 50, color: Colors.grey,),

      childWhenDragging: Container(),
    );
  }
}

