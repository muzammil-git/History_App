import 'dart:collection';

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
    Widget first =Container(width: 150, height: 100,
      decoration: BoxDecoration(
        border: Border.all(width:1.5, color: Colors.black),
      ),
      child:Image.asset('assets/images/new/reformer.jpg', ),
    );

    Widget fb = Container(width: 150, height: 100,
      decoration: BoxDecoration(
        border: Border.all(width:1.5, color: Colors.black),
      ),
      child:Image.asset('assets/images/new/reformer.jpg', ),
    );

    return accepted1==true? Container() : Draggable<String>(
      maxSimultaneousDrags: 1,
      data: 'FATIMA JINNAH',
      child: first,
      feedback:fb,
      childWhenDragging: Text('',style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black,
          fontSize: 20)),
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

    Widget second =  Container(width: 150, height: 100,
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Colors.black ),

        ),
        child: Image.asset('assets/images/new/Sir-Syed-Ahmad-Khan.jpeg',
          fit: BoxFit.contain,)
    );
    Widget target2 =  Container(width: 100, height: 100,color: Colors.greenAccent[50],
        child:  accepted2== true? Center(child: second,) : Container());
    return Draggable<Color>(
      maxSimultaneousDrags: 1,
      child:second,
      data:Colors.blue,
      feedback:   Container(width: 150, height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.black ),

          ),
          child: Image.asset('assets/images/new/Sir-Syed-Ahmad-Khan.jpeg',
            fit: BoxFit.contain,)
      ),
      childWhenDragging:  Text('',style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black,
          fontSize: 20)),


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
    Widget third = Container(width: 150, height: 100,
        decoration: BoxDecoration(border: Border.all(width: 1.5, color: Colors.black),
        ),
        child: Image.asset('assets/images/new/Aligarh Movement.png')
    );


    return Draggable<num>(
      data:3,
      child: third,
      feedback:  Container(width: 150, height: 100,
          decoration: BoxDecoration(border: Border.all(width: 1.5, color: Colors.black),
          ),
          child: Image.asset('assets/images/new/Aligarh Movement.png')
      ),
      childWhenDragging: Text('',style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black,
          fontSize: 20)),
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
      width: 150, height: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: Colors.black),
      ),
      child: Image.asset('assets/images/new/Allam Iqbal poetry.png'));

  return Draggable<bool>(
    data: true ,
    child: fourth,
    feedback:  Container(
        width: 150, height: 100,
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Colors.black),
        ),
        child: Image.asset('assets/images/new/Allam Iqbal poetry.png')),
    childWhenDragging:  Text('',style: TextStyle(
        fontWeight: FontWeight.bold, color: Colors.black,
        fontSize: 20)),
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
    Widget fifth =  Container(width: 150, height: 100,
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Colors.black),

        ),
        child:Image.asset('assets/images/new/Ambassador of Hindu Muslim Unity.png')

    );
    return  Draggable<int>(
      data:1,
      child: fifth,
      feedback: fifth,
      childWhenDragging:   Text('',style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black,
          fontSize: 20)),);
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
    Image.asset('assets/images/new/communication skills.jpeg'),
      width:150 , height:100 ,
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: Colors.black),

      ),);
    return Draggable<double>(
      data:2.9,
      child: sixth,
      feedback: sixth,
      childWhenDragging:   Text('',style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black,
          fontSize: 20)),
    );
  }
}

class Draggable7 extends StatefulWidget {
  @override
  _Draggable7State createState() => _Draggable7State();
}

class _Draggable7State extends State<Draggable7> {
  bool accepted7= false;
  final data = 'farwa';

  @override


  Widget build(BuildContext context) {
    Widget seven =Container(width: 150, height: 100,
      decoration: BoxDecoration(
        border: Border.all(width:1.5, color: Colors.black),
      ),
      child:Image.asset('assets/images/new/Fatima Jinnah.jpeg', ),

      // fit: BoxFit.contain,

      //Text('FATIMA JINNAH', style: TextStyle(fontWeight: FontWeight.bold),)
    );

    Widget fb = seven;

    return accepted7==true? Container() : Draggable<String>(
      maxSimultaneousDrags: 1,
      data: 'farwa',
      child: seven,
      feedback:fb,
      childWhenDragging:  Text('',style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black,
          fontSize: 20)),
    );
  }
}

class Draggable8 extends StatefulWidget {
  @override
  _Draggable8State createState() => _Draggable8State();
}

class _Draggable8State extends State<Draggable8> {
  bool accepted8= false;
  final data = 'zehra';

  @override


  Widget build(BuildContext context) {
    Widget eight =Container(width: 150, height: 100,
      decoration: BoxDecoration(
        border: Border.all(width:1.5, color: Colors.black),
      ),
      child:Image.asset('assets/images/new/Quaid e azam.jpeg', ),
    );

    Widget fb = eight;

    return accepted8==true? Container() : Draggable<String>(
      maxSimultaneousDrags: 1,
      data: 'zehra',
      child: eight,
      feedback:fb,
      childWhenDragging:  Text('',style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black,
          fontSize: 20)),
    );
  }
}

class Draggable9 extends StatefulWidget {
  @override
  _Draggable9State createState() => _Draggable9State();
}

class _Draggable9State extends State<Draggable9> {
  bool accepted9= false;
  final data= 9;
  @override


  Widget build(BuildContext context) {
    Widget nineth =Container(width: 150, height: 100,
      decoration: BoxDecoration(
        border: Border.all(width:1.5, color: Colors.black),
      ),
      child:Image.asset('assets/images/new/two nations theory.jpeg', ),
    );

    Widget fb = nineth;

    return accepted9==true? Container() : Draggable<num>(
      maxSimultaneousDrags: 1,
      data:9,
      child: nineth,
      feedback:fb,
      childWhenDragging:
      Text('',style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black,
          fontSize: 20)),
    );
  }
}

class Draggable10 extends StatefulWidget {
  @override
  _Draggable10State createState() => _Draggable10State();
}

class _Draggable10State extends State<Draggable10> {
  bool accepted10= false;
  final data= Colors.red;
  @override
  Widget build(BuildContext context) {
    Widget tenth =Container(width: 150, height: 100,
      decoration: BoxDecoration(
        border: Border.all(width:1.5, color: Colors.black),
      ),
      child:Image.asset('assets/images/new/The poet of the East.jpeg', ),
    );
//data is imp
    Widget fb = tenth;

    return accepted10==true? Container() : Draggable<Color>(
        maxSimultaneousDrags: 1,
        data: Colors.red,
        child: tenth,
        feedback:fb,
        childWhenDragging:  Container()
      // Text('Sir Syed',style: TextStyle(
      //     fontWeight: FontWeight.bold, color: Colors.black,
      //     fontSize: 20)),
    );
  }
}