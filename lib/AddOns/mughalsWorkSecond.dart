import'package:flutter/material.dart';
import 'package:history_app/AddOns/draggablesmughal.dart';
import 'package:history_app/AddOns/dragtargetmughal.dart';

class mughalsWorkSecond extends StatefulWidget {
  @override
  _mughalsWorkSecondState createState() => _mughalsWorkSecondState();
}

class _mughalsWorkSecondState extends State<mughalsWorkSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MUGHAL ERA'),backgroundColor: Colors.green,),
      body:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),

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
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "PakiHeroes");
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
