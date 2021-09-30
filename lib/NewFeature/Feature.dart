import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:history_app/NewFeature/second_screen/second.dart';
import 'package:history_app/NewFeature/second_screen/third_screen.dart';
import 'package:history_app/NewFeature/second_screen/account.dart';

import 'dart:core';
void main() {
  runApp(hero());
}

class hero extends StatefulWidget {
  @override
  _heroState createState() => _heroState();
}
//tuition app online
class _heroState extends State<hero> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.purple
      ),
      home: DefaultTabController(length: 2,   //without this the tabbar doesnt work, plus lenght and child are must haves.
        child: Scaffold(
            appBar: AppBar(
              flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                TabBar(
                  indicatorColor: Colors.purple,

                  tabs:[
                    //wrapped text with tab to increase the size of tabs
                    //can also add icons
                    Tab(child: Text('AREA',style:(TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)))),
                    Tab(child: Text('POPULATION',style:(TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic))),) ,
                  ]) ]),
            ),



            body:TabBarView(children: [
              Center(child: Column(
                  children: [Expanded(
                    child: Column(children: [
                      // SizedBox(height: 50,),
                      Draggables3(),
                      Draggable2(),
                      Draggable4(),
                      Draggable1(),
                      Column(
                        children:[
                          Dragtarget1(),
                          // SizedBox(height: 40),
                          DragTargetWidget2(),
                          DragTarget3(),
                          DragTarget4()
                        ],
                      ),
                    ] ),
                  ) ] )),
             Center(child:Column(
                 children: [Expanded(
                   child: Column(children: [
                     // SizedBox(height: 50,),
                     Draggable7(),
                     Draggable6(),
                     Draggable8(),
                     Draggable5(),
                     Column(
                       children:[
                         Dragtarget1(),
                         // SizedBox(height: 40),
                         DragTargetWidget2(),
                         DragTarget3(),
                         DragTarget4()
                       ],
                     ),
                   ] ),
                 ) ] ) ),
            ],)

        ),
      ),
    );
  }
}

