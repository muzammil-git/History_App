import 'package:flutter/material.dart';
import 'package:history_app/AddOns/draggablesmughal.dart';
import 'package:history_app/AddOns/dragtargetmughal.dart';
import 'package:history_app/AddOns/humanrights.dart';
import 'package:history_app/AddOns/mughalsWorkSecond.dart';
import 'package:history_app/AddOns/paki_heroes.dart';
import 'package:history_app/AddOns/journeytopak.dart';
import 'package:history_app/AddOns/great migration.dart';
import 'package:history_app/AddOns/state&democracy.dart';


class mughalsWork extends StatefulWidget {

  static const String id = 'mughals';

  @override
  _mughalsWorkState createState() => _mughalsWorkState();
}

class _mughalsWorkState extends State<mughalsWork> {
  bool accepted1= false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('MUGHAL ERA'),backgroundColor: Colors.green,),

      body:  Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ Text(
                'Drag a  picture on the left and drop on the right target.',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black,
                    fontSize: 20),)
                ,



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


                Expanded(child: Container(width: 200,
                    height: 40,
                    child:ElevatedButton(child:  Text('continue',style: TextStyle(color: Colors.black),),
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>mughalsWorkSecond()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),

                      ),
                    )
                ))])


      ),

    );


  }
}