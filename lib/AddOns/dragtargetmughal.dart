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
                  child: Text('Ibrahim lodhi was defeated in the battle of Panipat by',
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
    Widget second =  Container(        child: Text('CORRECT', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),

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
            child: Text('Promoted local culture and traditions ',
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
            child: Text('The war of Independence was fought under his leadership',
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
            child: Text('Promoted local culture and traditions ',
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
            child: Text('Known as ‘The Builder King’',
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
            child: Text('Not tolerant of other religions and destroyed Hindu temples',
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
            child: Text('The War of Independence 1857 was won by',
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
  final data= 2.9;
  @override
  Widget build(BuildContext context) {
    Widget sixth= Container(

      width: 50, height: 50,
      decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          border: Border.all(width: 1.5,
              color: Colors.black)
      ),
    );
    Widget target8 =  Container(width: 100, height: 100,
      decoration: BoxDecoration(color: Colors.green[50],
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Text('Not tolerant of other religions and destroyed Hindu temples',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          accepted8== true? Center(child: sixth,) : Container()
        ],
      ),
      //child:
    );

    return DragTarget<double>(
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
