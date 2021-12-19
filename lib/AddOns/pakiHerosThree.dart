import 'package:flutter/material.dart';
import 'package:history_app/AddOns/draggablesofheroes.dart';
import 'package:history_app/AddOns/dragtargetsof heroes.dart';
import 'dart:collection';

class pakiHerosThree extends StatefulWidget {
  @override
  _pakiHerosThreeState createState() => _pakiHerosThreeState();
}

class _pakiHerosThreeState extends State<pakiHerosThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HEROES OF PAKISTAN'),
      ),
      backgroundColor: Colors.pinkAccent[50],
      body:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),

              Expanded(flex: 4,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [Expanded(child: Draggable8()),

                      SizedBox(width:100),
                      Expanded(child: DragTarget10()),
                    ]),
              ),

              Expanded(flex: 4,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Draggable9()),
                    SizedBox(width:100),
                    Expanded(child: DragTarget8()),
                  ],
                ),
              ),

              Expanded(flex: 4,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Draggable10()),
                    SizedBox(width:100),
                    Expanded(child: DragTarget9()) ,
                  ],  ),
              ),


              Expanded(flex: 1,
                child: Container(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed:(){
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.pushNamed(context, 'greatMigration');
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
