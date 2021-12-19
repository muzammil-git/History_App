import 'package:flutter/material.dart';
import 'package:history_app/AddOns/draggabalejourney.dart';
import 'package:history_app/AddOns/dragtargetjourney.dart';
import 'package:history_app/AddOns/nextscreenjourney.dart';
import 'package:history_app/AddOns/n-screenjourney.dart';


class journeyOne extends StatefulWidget {
  static const String id = "journeyScreenOne";

  @override
  _journeyOneState createState() => _journeyOneState();
}

class _journeyOneState extends State<journeyOne> {
  bool accepted1= false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.lime[50],
      appBar: AppBar(
        title: Text('JOURNEY TO PAKISTAN'),
        backgroundColor: Colors.green,
      ),
      body:  Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ Text(
                'Drag a  picture on the left and drop on the right target.',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black,
                    fontSize: 20),),

                Expanded(flex: 3,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Expanded(child: Draggable1(),),

                        SizedBox(width: 100,),
                        Expanded(child: DragTarget3()),
                      ]),
                ),


                Expanded(flex: 3,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [ Expanded(child: Draggable2()
                        ),
                          SizedBox(width: 100),
                          Expanded(child: DragTarget1())
                        ])),

                Expanded(flex: 3,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Expanded(child: Draggables3()),
                        SizedBox(width: 100),
                        Expanded(child: DragTargetWidget2())
                      ]),
                ),


                Expanded(child: Container(child:ElevatedButton(child:  Text('continue',style: TextStyle(color: Colors.black),),
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>journeyTwo()));
                  },

                ),
                )
                )
              ])


      ),

    );


  }
}