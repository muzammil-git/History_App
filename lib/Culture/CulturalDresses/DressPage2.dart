import 'package:flutter/material.dart';

import 'draggables.dart';
import 'dragtarggets.dart';

class DressPage2 extends StatefulWidget {
  static const String id = "CultureDress2";

  @override
  _DressPage2State createState() => _DressPage2State();
}

class _DressPage2State extends State<DressPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Cultural Dresses'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white70,
          child: Column(children: [
            Text(
              'Drag the correct option from left to right target.',
              style: TextStyle(fontFamily: "Bold", fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable5(),
                Draggable4(),
              ],
            ),
            SizedBox(height: 20),
            Draggable6(),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              DragTarget4(),
              DragTarget6(),
            ]),
            // SizedBox(height: 05),
            DragTarget5(),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 140,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      'Content', (Route<dynamic> route) => false);
                  print('Done');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text('Done'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
