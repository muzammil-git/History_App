import 'package:flutter/material.dart';

import 'draggables.dart';
import 'dragtarggets.dart';

class DressPage1 extends StatefulWidget {
  static const String id = "CultureDress1";

  @override
  _DressPage1State createState() => _DressPage1State();
}

class _DressPage1State extends State<DressPage1> {
  bool accepted1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Cultural Dress'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Drag the correct option from left to right target.',
                style: TextStyle(fontFamily: "Bold", fontSize: 20),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  accepted1 == true ? Container() : Draggable1(),
                  Draggable2(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Draggables3(),
              SizedBox(
                height: 70,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                DragTarget3(),
                DragTarget1(),
                DragTargetWidget2(),
                // DragTarget5()
              ]),
              SizedBox(height: 30,),
              Container(
                width: 140,
                height: 40,
                child: ElevatedButton(
                  onPressed:(){
                    Navigator.of(context).pushNamedAndRemoveUntil('CultureDress2', (Route<dynamic> route) => false);
                    print('Done');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  ),

                  child: Text('Continue'),

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
