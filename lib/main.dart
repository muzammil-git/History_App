import 'package:flutter/material.dart';
import 'package:history_app/AddOns/great%20migration.dart';
import 'package:history_app/AddOns/humanrights.dart';
import 'package:history_app/AddOns/journeytopak.dart';
import 'package:history_app/AddOns/mughalsWork.dart';
import 'package:history_app/AddOns/paki_heroes.dart';
import 'package:history_app/AddOns/state&democracy.dart';
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

import 'package:history_app/MainScreen/mainPage.dart';
import 'package:history_app/Utils/UserSimplePreferences.dart';
import 'package:history_app/Youtube%20Video/ShowVideo.dart';
import 'dart:io';

import 'Culture/CulturalMusic/CultureMusic.dart';
import 'NewFeature/Feature.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await UserSimplePreferences.init();
  var email = UserSimplePreferences.getUserEmail();
  print("Main file: $email");

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to History App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Regular',
      ),

      //---Production Route---
      initialRoute: StartupScreen.id,
      // initialRoute: Content.id,

      //---Testing Route---
      // initialRoute: Content.id,
      // initialRoute: Feature.id,
      // initialRoute: journeyOne.id,
      // initialRoute: mughalsWork.id,
      // initialRoute: pakiHeros.id,
      // initialRoute: greatMigration.id,
      // initialRoute: statesDemocracy.id,




      routes: {
        //Muzammil's Work
        StartupScreen.id: (context) => StartupScreen(),
        RegistrationPage.id: (context) => RegistrationPage(),
        LoginPage.id: (context) => LoginPage(),
        MainPage.id: (context) => MainPage(),
        Content.id: (context) => Content(),
        // checkPlayer.id: (context) => checkPlayer(),
        //Naeema's Work
        Quiz1.id: (context) => Quiz1(),
        Quiz2.id: (context) => Quiz2(),
        Quiz3.id: (context) => Quiz3(),
        Quiz4.id: (context) => Quiz4(),
        Quiz5.id: (context) => Quiz5(),
        ShowVideo.id: (context) => ShowVideo(),
        //Farwa's Work
        PakistanMap.id: (context) => PakistanMap(),
        HeroesScreen.id: (context) => HeroesScreen(),
        ContinentMap.id: (context) => ContinentMap(),
        Feature.id:(context)=> Feature(),
        //Faiz's Work
        CultureMusic.id: (context) => CultureMusic(),
        DressPage1.id: (context) => DressPage1(),
        DressPage2.id: (context) => DressPage2(),
        // checkPlayer.id: (context) => checkPlayer(),

        //Farwa's Work AddOn
        journeyOne.id : (context) => journeyOne(), //
        mughalsWork.id : (context) => mughalsWork(),
        pakiHeros.id : (context) => pakiHeros(),
        greatMigration.id : (context) => greatMigration(),
        humanRights.id : (context) => humanRights(),
        statesDemocracy.id : (context) => statesDemocracy(),

      },
    );
  }
}