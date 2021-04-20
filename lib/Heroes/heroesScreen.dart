
import 'package:flutter/material.dart';

import 'drag_target.dart';
import 'draggables.dart';


class HeroesScreen extends StatefulWidget {

  static const id ="Heroes";

  @override
  _HeroesScreenState createState() => _HeroesScreenState();
}

class _HeroesScreenState extends State<HeroesScreen> {
  bool accepted1= false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('HEROES OF PAKISTAN'),
      ),
      backgroundColor: Colors.black,
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Drag the correct option from  left to  right target.',
                 style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,
                 fontSize: 20),


              ),
              SizedBox(height: 40,),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [accepted1==true? Container() : Draggable1(),
              SizedBox(width: 100,),
              DragTarget3(),]),

              SizedBox(height: 50),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:[ Draggable2(),
                SizedBox(width:100),
            DragTarget1()
            ]),

              SizedBox(height: 50),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Draggables3(),
                SizedBox(width:100),
              DragTarget4()
              ]),

              SizedBox(height: 50),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Draggable4(),
                    SizedBox(width:100),
              DragTargetWidget2(),
              ]),
              SizedBox(height: 50),

              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Draggable5(),
                SizedBox(width:100),
                DragTarget6(),

              ],
            ),

              SizedBox(height: 50),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Draggable6(),
                  SizedBox(width:100),
                  DragTarget7() ,
                ],  ),
              SizedBox(height: 50),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Draggable7(),
                      SizedBox(width:100),
                      DragTarget5(),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                width: 200,
                height: 40,
                child: ElevatedButton(
                  onPressed:(){
                    Navigator.of(context).pushNamedAndRemoveUntil('Content', (Route<dynamic> route) => false);
                    print('Done');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  ),

                    child: Text('Continue'),

                ),
              ),
              SizedBox(height: 30,)


   ] ),
        ),
      ),
    );
  }
}













