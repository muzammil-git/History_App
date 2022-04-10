import 'package:flutter/material.dart';
import 'package:history_app/Heroes/second_heroesscreen.dart';

import 'drag_target.dart';
import 'draggables.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({Key key}) : super(key: key);
  static const String id ='secondscreen';
  @override
  _secondscreenState createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green,
        title: Text('HEROES OF PAKISTAN'),
      ),
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Expanded(child: Draggable4()),
                        SizedBox(width:100),
                        Expanded(child: DragTarget7()),
                      ]),
                  SizedBox(height: 50),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Draggable5()),
                      SizedBox(width:100),
                      Expanded(child: DragTarget6()),

                    ],
                  ),

                  SizedBox(height: 50),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Draggable6()),
                      SizedBox(width:100),
                      Expanded(child: DragTarget5()) ,
                    ],  ),
                  SizedBox(height: 50),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Draggable7()),
                      SizedBox(width:100),
                      Expanded(child: DragTarget4()),
                    ],
                  ),
                  SizedBox(height: 30,),

                  Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed:(){
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),

                      child: Text('Done',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                    ),
                  ),

                  SizedBox(height: 30,)

                ] ),
          ),

      ),
    );
  }
}





