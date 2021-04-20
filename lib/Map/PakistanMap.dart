import 'dart:collection';

import 'package:flutter/material.dart';

class PakistanMap extends StatefulWidget {

  static const String id = "PakistanMap";
  @override
  _PakistanMapState createState() => _PakistanMapState();
}

class _PakistanMapState extends State<PakistanMap> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.green,
      title:Text(" PAKISTAN'S MAP"),
    ),
      body: Container( color: Colors.white,
        child: Column(
            children:[
              Stack(
                  children: [
                    Image.asset('assets/images/Map/map.jpg',),//positioned can only be use with stack.
                    Positioned (top:200 ,
                      left: 25,

                      child: draggable1(),),

                    Positioned (top:200 ,
                      left: 250,

                      child: draggable2(),),

                    Positioned(top:300 ,
                      left: 200,

                      child:draggable3(),),
//fata
                    Positioned(top:90 ,
                      left: 190,

                      child:draggable4(),),
                    //kpk
                    Positioned(top:40 ,
                        right: 150,

                        child:draggable5()),
                    //gb
                    Positioned(top:20 ,
                        right: 90,

                        child: draggable6()),
                    //kashmir
                    Positioned(top:65 ,
                        right: 80,

                        child: draggable7()),
                  ] ),
              SizedBox(height: 40,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                dragtarget1(),
                SizedBox(width: 10,),
                dragtarget2(),
                SizedBox(width: 10,),
                dragtarget3(),
                SizedBox(width: 10,),
                dragtarget4(),
              ] ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                dragtarget5(),
                SizedBox(width: 10,),
                dragtarget6(),
                SizedBox(width: 10,),
                dragtarget7()
              ],),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      onPressed:(){
                        Navigator.of(context).pushNamedAndRemoveUntil('Content', (Route<dynamic> route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        primary: Colors.redAccent
                      ),

                      child: Text('Quit'),

                    ),
                  ),
                  Container(
                    width: 130,
                    height: 40,
                    child: ElevatedButton(
                      onPressed:(){
                        Navigator.of(context).pushNamedAndRemoveUntil('Quiz2', (Route<dynamic> route) => false);
                        print('Done');
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.blue,
                          onPrimary: Colors.white,
                          textStyle: TextStyle(letterSpacing: 0.5, fontFamily: "Bold", fontSize: 15),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),

                      child: Text('Continue'),

                    ),
                  ),

                ],
              ),


            ]
        ),
      ),

    );
  }
}
class draggable1 extends StatefulWidget {
  @override
  _draggable1State createState() => _draggable1State();
}

class _draggable1State extends State<draggable1> {
  bool accepted1= false;
  final data = 'Balochi';
  @override

  Widget build(BuildContext context) {
    Widget first =Container(width: 15, height: 15,
      decoration:BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ) ,
    );

    Widget target1 = Container(width: 80, height: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
      child:


      Center(
        child: Column(
          children: [Text('Balochistan',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
            accepted1==true? Center(child: first,) : Container(),
          ],
        ),
      ), );


    return Draggable<String>(
      data: 'Balochi',
      child:first ,
      feedback: Container(width: 40, height: 40, color: Colors.grey,),
      childWhenDragging: Container(),
    );
  }
}

class dragtarget1 extends StatefulWidget {
  @override
  _dragtarget1State createState() => _dragtarget1State();
}

class _dragtarget1State extends State<dragtarget1> {
  final data = 'Balochi';
  bool accepted1= false;
  @override
  Widget build(BuildContext context) {
    Widget first =Container(width: 15, height: 15,
      decoration:BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ) ,);

    Widget target1 = Container(width: 90, height: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:5.0),
        child: Column(
          children: [Text('Balochistan',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
            accepted1==true? Center(child: first,) : Container(),
          ],
        ),
      ), );

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



class draggable2  extends StatefulWidget {
  @override
  _draggable2State createState() => _draggable2State();
}

class _draggable2State extends State<draggable2> {
  bool accepted2= false;
  final data= true;
  @override

  Widget build(BuildContext context) {
    Widget second =Container(width: 15, height: 15,
      decoration:BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ) ,
    );

    Widget target2 = Container(width: 80, height: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
      child:


      Column(
        children: [Text('Punjab',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
          accepted2==true? Center(child: second,) : Container(),
        ],
      ), );


    return  accepted2== true? Container() : Draggable<bool>(
      data:true,
      child:second,
      feedback: Container(width: 40, height: 40, color: Colors.grey,),
      childWhenDragging: Container(),
    );
  }
}

class dragtarget2 extends StatefulWidget {
  @override
  _dragtarget2State createState() => _dragtarget2State();
}

class _dragtarget2State extends State<dragtarget2> {
  bool accepted2= false;
  final data= true;
  @override
  Widget build(BuildContext context) {
    Widget second =Container(width: 10, height: 10,
        decoration:BoxDecoration(color: Colors.black,
            borderRadius: BorderRadius.circular(20)
        ));

    Widget target2 = Container(width: 80, height: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
      child:
      Center(
        child: Column(
          children: [Text('Punjab',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
            accepted2==true? Center(child: second,) : Container(),
          ],
        ),
      ), );

    return DragTarget<bool>(
      builder: (context, candidates, rejects){
        return target2;
      },
      onWillAccept: (data){
        return true;},
      onAccept: (data){
        setState(() {
          accepted2= true;
        });
      },
    );

  }
}




class draggable3 extends StatefulWidget {
  @override
  _draggable3State createState() => _draggable3State();
}

class _draggable3State extends State<draggable3> {
  final data= HashMap();
  bool accepted3= false;
  @override
  Widget build(BuildContext context) {
    Widget third =Container(width: 15, height: 15,
      decoration:BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ) ,);
    Widget target3 = Container(width: 80, height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
        child: Column(
            children: [
              Align(alignment: AlignmentDirectional.center,
                  child: Text('Sindh',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              accepted3==true? Center(child: third,) : Container()
            ]));
    return
      accepted3==true? Container(): Draggable<Map>(
        data:HashMap(),
        maxSimultaneousDrags: 1,
        child:third ,
        feedback: Container(width: 40, height: 40, color: Colors.grey,),
        childWhenDragging: Container(),

      );
  }
}


class dragtarget3 extends StatefulWidget {
  @override
  _dragtarget3State createState() => _dragtarget3State();
}

class _dragtarget3State extends State<dragtarget3> {
  final data= HashMap();
  bool accepted3 =false;
  @override
  Widget build(BuildContext context) {
    Widget third =Container(width: 15, height: 15,
      decoration:BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ) ,);
    Widget target3 = Container(width: 80, height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
        child: Column(
            children: [
              Align(alignment: AlignmentDirectional.center,
                  child: Text('Sindh',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              accepted3==true? Center(child: third,) : Container()]));

    return DragTarget<Map>(
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

class draggable4 extends StatefulWidget {
  @override
  _draggable4State createState() => _draggable4State();
}

class _draggable4State extends State<draggable4> {
  final data= 90;
  bool accepted4= false;
  @override
  Widget build(BuildContext context) {
    Widget fourth =Container(width: 15, height: 15,
      decoration:BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ) ,);
    Widget target4 = Container(width: 80, height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
        child: Column(
            children: [
              Align(alignment: AlignmentDirectional.center,
                  child: Text('FATA',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              accepted4==true? Center(child: fourth,) : Container()
            ]));
    return
      accepted4 ==true? Container():  Draggable<num>(
        data:90,
        child:fourth,
        feedback: Container(width: 40, height: 40, color: Colors.grey,),
        childWhenDragging: Container(),
      );
  }
}


class dragtarget4  extends StatefulWidget {
  @override
  _dragtarget4State createState() => _dragtarget4State();
}

class _dragtarget4State extends State<dragtarget4> {
  final data= 90;
  bool accepted4= false;
  @override
  Widget build(BuildContext context) {
    Widget fourth =Container(width: 15, height: 15,
      decoration:BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ) ,);
    Widget target4 = Container(width: 80, height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
        child: Column(
            children: [
              Align(alignment: AlignmentDirectional.center,
                  child: Text('FATA',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              accepted4==true? Center(child: fourth,) : Container()
            ]));

    return DragTarget<num>(
      builder: (context , candidates, rejects){
        return target4;

      },

      onWillAccept: (data){
        return true;},
      onAccept: (data){
        setState(() {
          accepted4 = true;
        });
      },
    );
    ;
  }
}


class draggable5 extends StatefulWidget {
  @override
  _draggable5State createState() => _draggable5State();
}

class _draggable5State extends State<draggable5> {
  final data= Colors.blue;
  bool accepted5= false;
  @override
  Widget build(BuildContext context) {
    Widget fifth =Container(width: 15, height: 15,
      decoration:BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ) ,);
    Widget target5 = Container(width: 80, height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
        child: Column(
            children: [
              Align(alignment: AlignmentDirectional.center,
                  child: Text('KPK',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              accepted5==true? Center(child: fifth,) : Container()]));
    return  accepted5 ==true? Container():   Draggable<Color>(
      data:Colors.blue,
      child:fifth ,
      feedback: Container(width: 40, height: 40, color: Colors.grey,),
      childWhenDragging: Container(),
    );
  }
}

class dragtarget5 extends StatefulWidget {

  @override
  _dragtarget5State createState() => _dragtarget5State();
}

class _dragtarget5State extends State<dragtarget5> {
  final data= Colors.blue;
  bool accepted5= false;
  @override
  Widget build(BuildContext context) {
    Widget fifth =Container(width: 15, height: 15,
        decoration:BoxDecoration(color: Colors.black,
            borderRadius: BorderRadius.circular(20))
    );
    Widget target5 = Container(width: 80, height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
        child: Column(
            children: [
              Align(alignment: AlignmentDirectional.center,
                  child: Text('KPK',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              accepted5==true? Center(child: fifth,) : Container()]));
    return DragTarget<Color>(
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

class draggable6 extends StatefulWidget {
  @override
  _draggable6State createState() => _draggable6State();
}

class _draggable6State extends State<draggable6> {
  final data= 1;
  bool accepted6 =false;
  @override
  Widget build(BuildContext context) {
    Widget sixth =Container(width: 15, height: 15,
        decoration:BoxDecoration(color: Colors.black,
            borderRadius: BorderRadius.circular(20)
        ) );
    Widget target6 = Container(width: 80, height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
        child: Column(
            children: [
              Align(alignment: AlignmentDirectional.center,
                  child: Text('Gilgit Baltistan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              accepted6==true? Center(child: sixth,) : Container()]));
    // accepted6==true? Container():caused error
    return Draggable<int>(
      data:1,
      child:sixth ,
      feedback: Container(width: 40, height: 40, color: Colors.grey,),
      childWhenDragging: Container(),

    );
  }
}
class dragtarget6 extends StatefulWidget {
  final data= 1;
  @override
  _dragtarget6State createState() => _dragtarget6State();
}

class _dragtarget6State extends State<dragtarget6> {
  bool accepted6 =false;
  @override
  Widget build(BuildContext context) {
    Widget sixth= Container(width: 15, height: 15,
        decoration:BoxDecoration(color: Colors.black,
            borderRadius: BorderRadius.circular(20)
        ));
    Widget target6 = Container(width: 80, height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
        child: Column(
            children: [
              Text('Gilgit Baltistan', textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accepted6==true? Center(child: sixth,) : Container()]));
    return DragTarget<int>(
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

class draggable7 extends StatefulWidget {
  @override
  _draggable7State createState() => _draggable7State();
}

class _draggable7State extends State<draggable7> {
  bool accepted7= false;
  final data= 1.5;
  @override
  Widget build(BuildContext context) {

    Widget seventh =Container(width: 15, height: 15,
      decoration:BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ) ,);

    Widget target7 = Container(width: 80, height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
        child: Column(
            children: [
              Align(alignment: AlignmentDirectional.center,
                  child: Text('Kashmir',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              accepted7==true? Center(child: seventh,) : Container()]));

    return Draggable<double>(
      data:1.5,
      child:seventh ,
      feedback: Container(width: 40, height: 40, color: Colors.grey,),
      childWhenDragging: Container(),
    );
  }
}

class dragtarget7 extends StatefulWidget {
  @override
  _dragtarget7State createState() => _dragtarget7State();
}

class _dragtarget7State extends State<dragtarget7> {
  final data= 1.5;
  bool accepted7= false;

  @override
  Widget build(BuildContext context) {

    Widget seventh =Container(width: 15, height: 15,
      decoration:BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ) ,);
    Widget target7 = Container(width: 80, height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
        child: Column(
            children: [
              Align(alignment: AlignmentDirectional.center,
                  child: Text('Kashmir',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              accepted7==true? Center(child: seventh,) : Container()]));
    {
      return DragTarget<double>(
          builder:( context, candidates,rejects){
            return target7;
          },
          onWillAccept: (data){
            return true;
          },

          onAcceptWithDetails:(data) {
            setState(() {
              accepted7 = true;
            });
          } );}}}

