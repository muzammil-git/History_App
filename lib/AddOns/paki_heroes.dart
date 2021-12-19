import 'package:flutter/material.dart';
import 'package:history_app/AddOns/draggablesofheroes.dart';
import 'package:history_app/AddOns/dragtargetsof heroes.dart';
import 'package:history_app/AddOns/pakiHerosSecond.dart';

class pakiHeros extends StatefulWidget {
  
  static const String id = "PakiHeroes";

  @override
  _pakiHerosState createState() => _pakiHerosState();
}

class _pakiHerosState extends State<pakiHeros> {
  bool accepted1= false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('HEROES OF PAKISTAN'),
        // backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.pinkAccent[50],
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>pakiHerosSecond()));
                  },

                ),
                )
                )
              ])


      ),

    );


  }
}