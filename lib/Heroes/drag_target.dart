import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DragTarget1 extends StatefulWidget {
  @override
  _DragTarget1State createState() => _DragTarget1State();
}

class _DragTarget1State extends State<DragTarget1> {
   bool accepted1=false;
  final data = 'FATIMA JINNAH';
  @override
  Widget build(BuildContext context) {
    Widget first =Container(width: 20, height: 20,

      decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle
      ),


    );

    Widget target1 = Container(width: 150, height: 100,
      decoration: BoxDecoration( color: Colors.green[50],
        border: Border.all(width: 1.5, color: Colors.black),
        borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Dentist, Mother of Nation,',textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          accepted1 == true ? Center(child: first) : Container(),

        ],
      )


        );

    return DragTarget<String>(
        builder: (context, candidates, rejects){
         return target1;
        },
        onWillAccept: (data){
          return true;},
          onAccept: (data){
          setState(() {
            accepted1= true;
          });
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
    Widget second =  Container(width: 20, height: 20,

    decoration: BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle
    ),
        child: (Text('QUAID')));
    Widget target2 =  Container(width: 150, height: 100,
decoration: BoxDecoration(color: Colors.green[50],
  border: Border.all(width: 1.5, color: Colors.black),
  borderRadius: BorderRadius.circular(30)
),
       child:Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Lawyer, Founder of Pakistan',
               style: TextStyle(fontWeight: FontWeight.bold),
               textAlign: TextAlign.center
               ,),
           ),
      accepted2== true? Center(child: second,) : Container(),],
       ),

       );
        //

    return DragTarget<Color>(
      builder: (context,candidates, rejected){
        return target2;},
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data){
        setState(() {
          accepted2= true;
        });
      },

    );
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
    Widget third = Container(width: 20, height: 20,
    decoration: BoxDecoration( color: Colors.black,
      shape: BoxShape.circle
    ),
    );
    Widget target3 =  Container(width: 150, height: 100,
      decoration: BoxDecoration(   color: Colors.green[50],
      border: Border.all(width:1.5, color: Colors.black),
        borderRadius: BorderRadius.circular(30),),
        child:Column(
          children: [ Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Founder of Aligarh School',
            textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
             accepted3== true? Center(child: third,) : Container(), ],
            )
 );
    return DragTarget<num>(
      builder: (context , candidates, rejects){
        return target3;
      },

      onWillAccept: (data){
        return true;},
      onAccept: (data){
        setState(() {
          accepted3 = true;
        });
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
    Widget fourth= Container(
      width: 20, height: 20,
      decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          border: Border.all(width: 1.5,
              color: Colors.black)
      ),
    );
    Widget target4 =  Container(width: 150, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('National Poet',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          accepted4== true? Center(child: fourth,) : Container()
        ],
      ),
      //child:
    );

    return DragTarget<bool>(
      builder:( context, candidates,rejects){
        return target4;
      },
      onWillAccept: (data){
        return true;
      },
      onAccept: (data){

      },
      onAcceptWithDetails: (data){
        setState(() {
          accepted4 = true;
        },);
      },
    );
  }
}

//5

class DragTarget5 extends StatefulWidget {
  @override
  _DragTarget5State createState() => _DragTarget5State();
}

class _DragTarget5State extends State<DragTarget5> {
  bool accepted5 = false;
  final data = int;
  @override
  Widget build(BuildContext context) {
    Widget fifth= Container(
      child: Align(alignment: Alignment.center, child: Text('LIAQUATH A.KHAN')),
     width: 20, height: 20,
    decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
     border: Border.all(width: 1.5,
     color: Colors.black)
    ),
    );
    Widget target5 =  Container(width: 150, height: 100,
        decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('1st Prime Minister',
              style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            accepted5== true? Center(child: fifth,) : Container()
          ],
        ),
        //child: 
        );

    return DragTarget<int>(
      builder:( context, candidates,rejects){
        return target5;
    },
    onWillAccept: (data){
        return true;
    },
    onAccept: (data){
        setState(() {
          accepted5 = true;
        });
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
    Widget sixth= Container(

      width: 20, height: 20,
      decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          border: Border.all(width: 1.5,
              color: Colors.black)
      ),
    );
    Widget target6 =  Container(width: 150, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Khilafath Movement',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          accepted6== true? Center(child: sixth,) : Container()
        ],
      ),
      //child:
    );

    return DragTarget<double>(
      builder:( context,candidates,rejects){
        return target6;
      },
      onWillAccept: (data){
        return true;
      },
      onAccept: (data){

      },
      onAcceptWithDetails:(data){
        setState(() {
          accepted6 = true;
        });
      } ,
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
  final data= HashMap();
  @override
  Widget build(BuildContext context) {
    Widget seventh= Container(

      width: 20, height: 20,
      decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          border: Border.all(width: 1.5,
              color: Colors.black)
      ),
    );
    Widget target7 =  Container(width: 150, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Social Worker',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          accepted7== true? Center(child: seventh,) : Container()
        ],
      ),
      //child:
    );

    return DragTarget<Map>(
      builder:( context, candidates,rejects){
        return target7;
      },
      onWillAccept: (data){
        return true;
      },

      onAcceptWithDetails:(data){
        setState(() {
          accepted7 = true;
        });
      } ,
    );
  }
}


