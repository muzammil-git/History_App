import 'package:flutter/material.dart';
import 'package:history_app/Culture/CulturalDresses/DressPage1.dart';
import 'package:history_app/Culture/CulturalDresses/DressPage2.dart';
import 'package:history_app/Heroes/heroesScreen.dart';
import 'package:history_app/MainScreen/StartupScreen.dart';
import 'package:history_app/Map/ContinentMap.dart';
import 'package:history_app/Map/PakistanMap.dart';
import 'package:history_app/PakistanVideo/youtube_getDone.dart';
import 'package:history_app/MainScreen/RegistrationPage.dart';
import 'package:history_app/MainScreen/Login.dart';
import 'package:history_app/MainScreen/Content.dart';

import 'package:history_app/Quiz/quiz1/quiz1.dart';
import 'package:history_app/Quiz/quiz2/quiz2.dart';
import 'package:history_app/Quiz/quiz3/quiz3.dart';
import 'package:history_app/Quiz/quiz4/quiz4.dart';
import 'package:history_app/Quiz/quiz5/quiz5.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:history_app/MainScreen/mainPage.dart';
import 'dart:io';

import 'Culture/CulturalMusic/CultureMusic.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    // name: 'db6',
    options: Platform.isIOS || Platform.isMacOS
        ? const FirebaseOptions(//IOS
      appId: '1:297855924061:ios:c6de2b69b03a5be8',
      apiKey: 'AIzaSyD_shO5mfO9lhy2TVWhfo1VUmARKlG4suk',
      projectId: 'flutter-firebase-plugins',
      messagingSenderId: '297855924061',
      databaseURL: 'https://flutterfire-cd2f7.firebaseio.com',
    )
        : const FirebaseOptions(//ANDROID //Configured from google-service.json
      appId: '1:579838829775:android:802e94890e1879bc2703ba',
      apiKey: 'AIzaSyCex3aSnfh8z4qUiOmI965DDyllORIlQLw',
      messagingSenderId: '297855924061',
      projectId: 'historystorage-ac9e2',
      databaseURL: 'https://historystorage-ac9e2-default-rtdb.firebaseio.com/',
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',

        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Regular',
        ),
        initialRoute: StartupScreen.id,
        routes: {
          //Muzammil's Work
          StartupScreen.id: (context) => StartupScreen(),
          RegistrationPage.id: (context) => RegistrationPage(),
          LoginPage.id: (context) => LoginPage(),
          MainPage.id: (context) => MainPage(),
          Content.id: (context) => Content(),
          checkPlayer.id: (context) => checkPlayer(),
          //Naeema's Work
          Quiz1.id: (context) => Quiz1(),
          Quiz2.id: (context) => Quiz2(),
          Quiz3.id: (context) => Quiz3(),
          Quiz4.id: (context) => Quiz4(),
          Quiz5.id: (context) => Quiz5(),
          //Farwa's Work
          PakistanMap.id: (context) => PakistanMap(),
          HeroesScreen.id: (context) => HeroesScreen(),
          ContinentMap.id: (context) => ContinentMap(),
          //Faiz's Work
          CultureMusic.id: (context) => CultureMusic(),
          DressPage1.id: (context) => DressPage1(),
          DressPage2.id: (context) => DressPage2(),
          // checkPlayer.id: (context) => checkPlayer(),
        },
      );
  }
}


