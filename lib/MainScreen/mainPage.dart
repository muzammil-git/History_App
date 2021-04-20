import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class MainPage extends StatefulWidget {

  static const String id ='MainPage';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: (){
            DatabaseReference dbref = FirebaseDatabase.instance.reference().child('Test');
            dbref.set('IsConnected'); //In the realtime database it test the connection and prints in the database tree

          },
          height: 50,
          minWidth: 300,
          color: Colors.green,
          child: Text('Test Connection'),
        ),
      ),
    );
  }
}