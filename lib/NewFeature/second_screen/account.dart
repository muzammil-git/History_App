import 'package:flutter/material.dart';
//todo copy draggables and dragtargets like previous on separate pages,
// only change containers size and colors or replace them with list tiles, there should be 4
// draggables above and dragtargets bottom, ask to arrange in ascending order of
//population and size. also use tabbar
import 'dart:collection';

import 'package:history_app/NewFeature/second_screen/second.dart';


class Account extends StatefulWidget {


  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool accepted1=false;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
    theme: ThemeData(
    scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white
    ),
    home: Scaffold(

    body:  Column(
        children: [Expanded(child: Column(children: [
          // SizedBox(height: 50,),
            Draggables3(),
          Draggable2(),
          Draggable4(),
          Draggable1(),
          Column(
              children:[
            Dragtarget1(),
            // SizedBox(height: 40),
            DragTargetWidget2(),
                DragTarget3(),
DragTarget4()
        ],
      ),
   ] ),) ] ),

    ));
  }
}
//1
class Draggable1 extends StatefulWidget {


  @override
  _Draggable1State createState() => _Draggable1State();
}

class _Draggable1State extends State<Draggable1> {
  final data= int;

  bool accepted1=false;
  @override
  Widget build(BuildContext context) {
  Widget tile1=  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(decoration: BoxDecoration(color: Colors.deepPurple,
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3),)]),
      child: Card(
        color: Colors.white,
        child: ListTile(
          title: Text('KPK', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
              color: Colors.deepPurple),),

          trailing: Icon(Icons.drag_handle,
            color: Colors.purple,
          ),

        ),
      ),
    ),
  );
   return accepted1==true? Container() : Draggable<int>(
    data:1,
      child: tile1,
      feedback: Card(
        child: Container(
          width: 400,
          height: 50,
          child:Text('KPK', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
              color: Colors.deepPurple),),
          decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Colors.amberAccent[100].withOpacity(0.5),
            spreadRadius: 20,
            blurRadius: 30,
            offset: Offset(0, 0),

          )]
        ),),
      ) ,
      childWhenDragging: tile1
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
    Widget tile2= Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(decoration: BoxDecoration(color: Colors.deepPurple,
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),)]),
        child: Card(
          color: Colors.white,
          child: ListTile(
            title: Text('SINDH', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),

            trailing: Icon(Icons.drag_handle,
              color: Colors.purple,
            ),

          ),
        ),
      ),
    );
    return accepted2==true? Container() : Draggable<double>(
        data:1.5,
        child: tile2,
        feedback: Card(
          child: Container(
            width: 400,
            height: 50,
            child:Text('SINDH', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.amberAccent[100].withOpacity(0.5),
                  spreadRadius: 20,
                  blurRadius: 30,
                  offset: Offset(0, 0),

                )]
            ),),
        ) ,
        childWhenDragging: tile2
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
    Widget tile3=  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(decoration: BoxDecoration(
          color: Colors.deepPurple,
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),)]),
        child: Card(
          color: Colors.white,
          child: ListTile(
            title: Text('PUNJAB', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),

            trailing: Icon(Icons.drag_handle,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
    return accepted3==true? Container() : Draggable<Color>(
        data:Colors.blue,
        child: tile3,
        feedback: Card(
          child: Container(
            width: 400,
            height: 50,
            child:Text('PUNJAB', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.amberAccent[100].withOpacity(0.5),
                  spreadRadius: 20,
                  blurRadius: 30,
                  offset: Offset(0, 0),

                )]
            ),),
        ) ,
        childWhenDragging: tile3
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
  Widget build(BuildContext context) { Widget tile4=  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(decoration: BoxDecoration(color: Colors.deepPurple,
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3),)]),
      child: Card(
        color: Colors.white,
        child: ListTile(
          title: Text('BALOCHISTAN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
              color: Colors.deepPurple),),

          trailing: Icon(Icons.drag_handle,
            color: Colors.purple,
          ),
        ),
      ),
    ),
  );
  return accepted4==true? Container() : Draggable<bool>(
      data:true,
      child: tile4,
      feedback:Card(
        child: Container(
          width: 400,
          height: 50,
          child:Text('BALOCHISTAN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
              color: Colors.deepPurple),),
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: Colors.amberAccent[100].withOpacity(0.5),
                spreadRadius: 20,
                blurRadius: 30,
                offset: Offset(0, 0),

              )]
          ),),
      ) ,
      childWhenDragging: tile4
  );
  }
}

//5
class Draggable5 extends StatefulWidget {


  @override
  _Draggable5State createState() => _Draggable5State();
}

class _Draggable5State extends State<Draggable5> {
  bool accepted5= false;
  @override
  Widget build(BuildContext context) {
    Widget tile5=  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(decoration: BoxDecoration(color: Colors.deepPurple,
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),)]),
        child: Card(
          color: Colors.white,
          child: ListTile(
            title: Text('PUNJAB', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),

            trailing: Icon(Icons.drag_handle_rounded,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
    return accepted5==true? Container() : Draggable<bool>(
        data:true,
        child: tile5,
        feedback:Card(

          child: Container(
            width: 400,
            height: 50,

            child:Text('PUNJAB', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.amberAccent[100].withOpacity(0.5),
                  spreadRadius: 20,
                  blurRadius: 30,
                  offset: Offset(0, 0),

                )]
            ),),
        ) ,
        childWhenDragging: tile5
    );
  }
}

//6
class Draggable6 extends StatefulWidget {


  @override
  _Draggable6State createState() => _Draggable6State();
}

class _Draggable6State extends State<Draggable6> {
  bool accepted6=false;
  @override
  Widget build(BuildContext context) {
    Widget tile6=  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(decoration: BoxDecoration(color: Colors.deepPurple,
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),)]),
        child: Card(
          color: Colors.white,
          child: ListTile(
            title: Text('SINDH', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),

            trailing: Icon(Icons.drag_handle,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
    return accepted6==true? Container() : Draggable<Color>(
        data:Colors.blue,
        child: tile6,
        feedback:Card(
          child: Container(
            width: 400,
            height: 50,
            child:Text('SINDH', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.amberAccent[100].withOpacity(0.5),
                  spreadRadius: 20,
                  blurRadius: 30,
                  offset: Offset(0, 0),

                )]
            ),),
        ) ,
        childWhenDragging: tile6
    );
  }
}

//7
class Draggable7 extends StatefulWidget {

  @override
  _Draggable7State createState() => _Draggable7State();
}

class _Draggable7State extends State<Draggable7> {
  bool accepted7= false;
  @override
  Widget build(BuildContext context) {
    Widget tile7=  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(decoration: BoxDecoration(color: Colors.deepPurple,
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),)]),
        child: Card(
          color: Colors.white,
          child: ListTile(
            title: Text('BALOCHISTAN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),

            trailing: Icon(Icons.drag_handle_sharp,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
    return accepted7==true? Container() : Draggable<int>(
        data:1,
        child: tile7,
        feedback:Card(
          child: Container(
            width: 400,
            height: 50,
            child:Text('BALOCHISTAN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.amberAccent[100].withOpacity(0.5),
                  spreadRadius: 20,
                  blurRadius: 30,
                  offset: Offset(0, 0),

                )]
            ),),
        ) ,
        childWhenDragging: tile7
    );
  }
}
//8
class Draggable8 extends StatefulWidget {


  @override
  _Draggable8State createState() => _Draggable8State();
}

class _Draggable8State extends State<Draggable8> {
  bool accepted8= false;
  @override
  Widget build(BuildContext context) {
    Widget tile8=  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(decoration: BoxDecoration(color: Colors.deepPurple,
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),)]),
        child: Card(
          color: Colors.white,
          child: ListTile(
            title: Text('KPK', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),

            trailing: Icon(Icons.drag_handle_outlined,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
    return accepted8==true? Container() : Draggable<double>(
        data:0.5,
        child: tile8,
        feedback:Card(
          child: Container(
            width: 400,
            height: 50,
            child:Text('KPK', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.deepPurple),),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.amberAccent[100].withOpacity(0.5),
                  spreadRadius: 20,
                  blurRadius: 30,
                  offset: Offset(0, 0),

                )]
            ),),
        ) ,
        childWhenDragging: tile8
    );
  }
}





