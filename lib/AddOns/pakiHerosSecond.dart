import'package:flutter/material.dart';
import 'package:history_app/AddOns/draggablesofheroes.dart';
import 'package:history_app/AddOns/dragtargetsof heroes.dart';
import 'package:history_app/AddOns/pakiHerosThree.dart';
class pakiHerosSecond extends StatefulWidget {
  @override
  _pakiHerosSecondState createState() => _pakiHerosSecondState();
}

class _pakiHerosSecondState extends State<pakiHerosSecond> {
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>pakiHerosThree()));

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
