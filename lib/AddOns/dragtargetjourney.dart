import 'dart:collection';

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
    Widget first =Container(        child: Text('CORRECT', style: TextStyle(color: Colors.green,
        fontWeight: FontWeight.bold),
    ),



    );

    Widget target1 = Container(width: 100, height: 100,
        decoration: BoxDecoration( color: Colors.green[50],
            border: Border.all(width: 1.5, color: Colors.black),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Align(alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('What was the Eductaional Institute built by Sir Syed?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
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
    Widget second =  Container(child: Text('CORRECT',
      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
    );

    Widget target2 =  Container(width: 100, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Who was the first Mughal Emperor',
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
    Widget third = Container(        child: Text('CORRECT', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),

    );
    Widget target3 =  Container(width: 100, height: 100,
        decoration: BoxDecoration(   color: Colors.green[50],
          border: Border.all(width:1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30),),
        child:Column(
          children: [ Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('The Reason of British Strength was ',
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
      child: Text('CORRECT', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),

    );
    Widget target4 =  Container(width: 100, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Muslims and Hindus are different',
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
      child: Text('CORRECT', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),

    );
    Widget target5 =  Container(width: 100, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('To speak for the Rights of Muslims',
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
  final data= 2.9;
  @override
  Widget build(BuildContext context) {
    Widget sixth= Container(

      child: Text('CORRECT', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),

    );
    Widget target6 =  Container(width: 100, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Muslims set up their own political party 1906',
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

class DragTarget7 extends StatefulWidget {
  @override
  _DragTarget7State createState() => _DragTarget7State();
}

class _DragTarget7State extends State<DragTarget7> {
  bool accepted7 = false;
  final data= 'farwa';
  @override
  Widget build(BuildContext context) {
    Widget seventh= Container(
      child: Text('CORRECT', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
    );
    Widget target7 =  Container(width: 100, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('East India company was set up by ',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          accepted7== true? Center(child: seventh,) : Container()
        ],
      ),
      //child:
    );

    return DragTarget<String>(
      builder:( context,candidates,rejects){
        return target7;
      },
      onWillAccept: (data){
        return true;
      },
      onAccept: (data){

      },
      onAcceptWithDetails:(data){
        setState(() {
          accepted7 = true;
        });
      } ,
    );
  }
}

class DragTarget8 extends StatefulWidget {
  @override
  _DragTarget8State createState() => _DragTarget8State();
}

class _DragTarget8State extends State<DragTarget8> {
  bool accepted8 = false;
  final data= 'zehra';
  @override
  Widget build(BuildContext context) {
    Widget eight= Container(
      child: Text('CORRECT', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
    );
    Widget target8 =  Container(width: 100, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Who built schools and colleges for Muslims',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          accepted8== true? Center(child: eight,) : Container()
        ],
      ),
      //child:
    );

    return DragTarget<String>(
      builder:( context,candidates,rejects){
        return target8;
      },
      onWillAccept: (data){
        return true;
      },
      onAccept: (data){

      },
      onAcceptWithDetails:(data){
        setState(() {
          accepted8 = true;
        });
      } ,
    );
  }
}


class DragTarget9 extends StatefulWidget {
  @override
  _DragTarget9State createState() => _DragTarget9State();
}

class _DragTarget9State extends State<DragTarget9> {
  bool accepted9 = false;
  final data= 9;
  @override
  Widget build(BuildContext context) {
    Widget nineth= Container(
      child: Text('CORRECT', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
    );
    Widget target9 =  Container(width: 100, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('In 1940, Quaid-e-Azam demanded a separate homeland',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          accepted9== true? Center(child: nineth,) : Container()
        ],
      ),
      //child:
    );

    return DragTarget<num>(
      builder:( context,candidates,rejects){
        return target9;
      },
      onWillAccept: (data){
        return true;
      },
      onAccept: (data){

      },
      onAcceptWithDetails:(data){
        setState(() {
          accepted9 = true;
        });
      } ,
    );
  }
}

class DragTarget10 extends StatefulWidget {
  @override
  _DragTarget10State createState() => _DragTarget10State();
}

class _DragTarget10State extends State<DragTarget10> {
  bool accepted10 = false;
  final data= Colors.red;
  @override
  Widget build(BuildContext context) {
    Widget tenth= Container(
      child: Text('CORRECT', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
    );
    Widget target10 =  Container(width: 100, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Was fought between Muslims and British',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          accepted10== true? Center(child: tenth,) : Container()
        ],
      ),
      //child:
    );
//colors dont work
    return DragTarget<Color>(
      builder:( context,candidates,rejects){
        return target10;
      },
      onWillAccept: (data){
        return true;
      },
      onAccept: (data){

      },
      onAcceptWithDetails:(data){
        setState(() {
          accepted10 = true;
        });
      } ,
    );
  }
}
