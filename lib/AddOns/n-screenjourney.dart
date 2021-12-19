import'package:flutter/material.dart';
import 'package:history_app/AddOns/draggabalejourney.dart';
import 'package:history_app/AddOns/dragtargetjourney.dart';
import 'package:history_app/AddOns/nextscreenjourney.dart';


class journeyTwo extends StatefulWidget {
  @override
  _journeyTwoState createState() => _journeyTwoState();
}

class _journeyTwoState extends State<journeyTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JOURNEY TO PAKISTAN'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lime[50],
      body:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),

              Expanded(flex: 5,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [Expanded(child: Draggable4()),

                      SizedBox(width:100),
                      Expanded(child: DragTarget7()),
                    ]),
              ),

              Expanded(flex: 5,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Draggable5()),
                    SizedBox(width:100),
                    Expanded(child: DragTarget6()),

                  ],
                ),
              ),

              Expanded(flex: 5,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Draggable6()),
                    SizedBox(width:100),
                    Expanded(child: DragTarget5()) ,
                  ],  ),
              ),


              Expanded(flex: 5,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Draggable7()),
                    SizedBox(width:100),
                    Expanded(child: DragTarget4()),
                  ],
                ),
              ),

              Expanded(flex: 2,
                child: Container(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>journeyThree()));

                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),

                    child: Text('Continue',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),

                  ),
                ),
              ),




            ] ),

      ),


    );
  }
}
