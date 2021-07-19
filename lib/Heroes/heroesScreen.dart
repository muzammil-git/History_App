import 'package:flutter/material.dart';
import 'package:history_app/Heroes/second_heroesscreen.dart';

import 'drag_target.dart';
import 'draggables.dart';

void main() {
  runApp(MaterialApp(
    home: HeroesScreen(),
  ));
}

class HeroesScreen extends StatefulWidget {
  static const id = "Heroes";

  @override
  _HeroesScreenState createState() => _HeroesScreenState();
}

class _HeroesScreenState extends State<HeroesScreen> {
  bool accepted1 = false;
  @override
  Widget build(BuildContext context) {
//TODO fix
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('HEROES OF PAKISTAN'),
      ),
      backgroundColor: Colors.black,
      body: Ascreen(),
    );
  }
}

class Ascreen extends StatefulWidget {
  const Ascreen({Key key}) : super(key: key);

  @override
  _AscreenState createState() => _AscreenState();
}

class _AscreenState extends State<Ascreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Drag a personality picture on the left and drop on a target you think was their profession.',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
        Expanded(
          flex: 3,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(child: Draggable1()),
            SizedBox(
              width: 100,
            ),
            Expanded(child: DragTarget3()),
          ]),
        ),
        Expanded(
            flex: 3,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(child: Draggable2()),
              SizedBox(width: 100),
              Expanded(child: DragTarget1())
            ])),
        Expanded(
          flex: 3,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(child: Draggables3()),
            SizedBox(width: 100),
            Expanded(child: DragTargetWidget2())
          ]),
        ),
        Container(
          width: 200,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => secondscreen()));
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: Text(
              'Continue',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
      ]),
    );
  }
}
