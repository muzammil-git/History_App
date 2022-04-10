import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:history_app/NewFeature/second_screen/second.dart';
import 'package:history_app/NewFeature/second_screen/third_screen.dart';
import 'package:history_app/NewFeature/second_screen/account.dart';

import 'dart:core';

class Feature extends StatefulWidget {
  static const String id = 'NewFeature';

  const Feature({Key key}) : super(key: key);

  @override
  _FeatureState createState() => _FeatureState();
}

class _FeatureState extends State<Feature> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: true,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.purple
      ),
      home: DefaultTabController(length: 2,   //without this the tabbar doesnt work, plus lenght and child are must haves.
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () { Navigator.pop(context);},
              ),
              flexibleSpace: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    TabBar(
                        indicatorColor: Colors.purple,

                        tabs:[
                          //wrapped text with tab to increase the size of tabs
                          //can also add icons
                          // Tab(child: Text('Hey'),),
                          Tab(child: Text('AREA',style:(TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)))),
                          Tab(child: Text('POPULATION',style:(TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic))),) ,
                        ]) ]),
            ),



            body:TabBarView(children: [
              Center(child: Column(
                  children: [Expanded(
                    child: Column(children: [
                      // SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Draggables3(),
                          Draggable2(),

                        ],
                      ),

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
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              'Content', (Route<dynamic> route) => false);
                          print('Done');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            onPrimary: Colors.white,
                            textStyle: TextStyle(
                                letterSpacing: 0.5,
                                fontFamily: "Bold",
                                fontSize: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: Text('Quit'),
                      ),

                    ] ),
                  ) ] )),
              Center(child:Column(
                  children: [Expanded(
                    child: Column(children: [
                      // SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Draggable7(),
                          Draggable6(),
                        ],
                      ),

                      Draggable8(),
                      Draggable5(),
                      Column(
                        children:[
                          Dragtarget1(),
                          // SizedBox(height: 40),
                          DragTargetWidget2(),
                          DragTarget3(),
                          DragTarget4(),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  'Content', (Route<dynamic> route) => false);
                              print('Done');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                onPrimary: Colors.white,
                                textStyle: TextStyle(
                                    letterSpacing: 0.5,
                                    fontFamily: "Bold",
                                    fontSize: 15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            child: Text('Quit'),
                          ),

                        ],
                      ),
                    ] ),
                  ) ] ) ),

            ],


            )

        ),
      ),
    );
  }

}


