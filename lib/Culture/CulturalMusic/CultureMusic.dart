import 'dart:ui';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:io';
import 'package:provider/provider.dart';

class Question{
  String questionText;
  bool questionAnswer;

  Question({String qtn, bool ans}) {
    questionText = qtn;
    questionAnswer = ans;
  }
}


class CultureMusic extends StatefulWidget {

  static const String id = "CultureMusic";

  @override
  _CultureMusicState createState() => _CultureMusicState();
}

class _CultureMusicState extends State<CultureMusic> {
  AudioPlayer advancedPlayer = AudioPlayer();//Stop
  AudioCache audioCache = AudioCache();//Start

  Color neutral = Colors.amberAccent;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioCache.clearCache();
    advancedPlayer.dispose();
  }

  var songName = [
    "Sindhi_cultural_Algoza_saaz","Pakistani_pashto_traditional",
    "Folk_music_of_Gilgit Baltistan","Energatic_Bhangra_Beat",
    "Folk_song_of_Kashmir","Beautiful_Balochi_folk_song"
  ];

  List<Question> _questionList1 = [
    Question(qtn: "Pashto Traditional", ans: false ),
    Question(qtn: "Gilgit Baltistan", ans: false ),
    Question(qtn: "Sindhi Song", ans: true ),

  ];

  List<Question> _questionList2 = [
    Question(qtn: "Gilgit Baltistan", ans: false ),
    Question(qtn: "Pashto Traditional", ans: true ),
    Question(qtn: "Kashmir Folk Song", ans: false ),

  ];

  List<Question> _questionList3 = [
    Question(qtn: "Sindhi Song", ans: false ),
    Question(qtn: "Gilgit Baltistan", ans: true),
    Question(qtn: "Kashmir Folk Song", ans: false ),

  ];

  List<Question> _questionList4 = [
    Question(qtn: "Gilgit Baltistan", ans: false ),
    Question(qtn: "Kashmir Folk Song", ans: true ),
    Question(qtn: "Balochi_Folk Song", ans: false ),
  ];


  List<Question> _questionList5 = [
    Question(qtn: "Bhangra_Beat", ans: true ),
    Question(qtn: "Gilgit Baltistan", ans: false ),
    Question(qtn: "Kashmir Folk Song", ans: false ),
  ];

  List<Question> _questionList6 = [
    Question(qtn: "Kashmir Folk Song", ans: false ),
    Question(qtn: "Bhangra_Beat", ans: false ),
    Question(qtn: "Balochi_Folk Song", ans: true ),

  ];


  @override
  void initState() {
    // TODO: implement initState
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('CULTURAL MUSIC'),

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Question' , style: TextStyle(fontSize: 25,fontFamily: "Bold"),),
                  ],
                ),
                Text('Identify the right song and select the correct option:'
                  , style: TextStyle(fontSize: 18,fontFamily: "Regular"),),

                localAsset(),
                SizedBox(height: 100,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color right1 = Colors.yellow;
  Color wrong1 = Colors.yellow;

  Color right2 = Colors.yellow;
  Color wrong2 = Colors.yellow;

  Color right3 = Colors.yellow;
  Color wrong3 = Colors.yellow;

  Color right4 = Colors.yellow;
  Color wrong4 = Colors.yellow;

  Color right5 = Colors.yellow;
  Color wrong5 = Colors.yellow;

  Color right6 = Colors.yellow;
  Color wrong6 = Colors.yellow;

  Widget selection1(List<Question>result) {

    return SizedBox(
      height: 150,
      width: 150,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: result[index].questionAnswer ? right1 : wrong1,
                onPrimary: Colors.black,
              ),
              onPressed: () {

                // print('Click');
                if(result[index].questionAnswer == true ){
                  // print('yo');
                  setState(() {
                    right1 = Colors.green;
                  });
                }

              },
              child: Text(
                result[index].questionText, textAlign: TextAlign.center,),
            );
          }
      ),
    );
  }
  Widget selection2(List<Question>result) {

    return SizedBox(
      height: 150,
      width: 150,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: result[index].questionAnswer ? right2 : wrong2,
                onPrimary: Colors.black,
              ),
              onPressed: () {
                // print('Click');
                if(result[index].questionAnswer == true ){
                  // print('yo');
                  setState(() {
                    right2 = Colors.green;
                  });
                }

              },
              child: Text(
                result[index].questionText, textAlign: TextAlign.center,),
            );
          }
      ),
    );
  }
  Widget selection3(List<Question>result) {

    return SizedBox(
      height: 150,
      width: 150,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: result[index].questionAnswer ? right3 : wrong3,
                onPrimary: Colors.black,
              ),
              onPressed: () {
                // print('Click');
                if(result[index].questionAnswer == true ){
                  // print('yo');
                  setState(() {
                    right3 = Colors.green;
                  });
                }

              },
              child: Text(
                result[index].questionText, textAlign: TextAlign.center,),
            );
          }
      ),
    );
  }
  Widget selection4(List<Question>result) {

    return SizedBox(
      height: 150,
      width: 150,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: result[index].questionAnswer ? right4 : wrong4,
                onPrimary: Colors.black,
              ),
              onPressed: () {
                // print('Click');
                if(result[index].questionAnswer == true ){
                  // print('yo');
                  setState(() {
                    right4 = Colors.green;
                  });
                }

              },
              child: Text(
                result[index].questionText, textAlign: TextAlign.center,),
            );
          }
      ),
    );
  }
  Widget selection5(List<Question>result) {

    return SizedBox(
      height: 150,
      width: 150,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: result[index].questionAnswer ? right5 : wrong5,
                onPrimary: Colors.black,
              ),
              onPressed: () {
                // print('Click');
                if(result[index].questionAnswer == true ){
                  // print('yo');
                  setState(() {
                    right5 = Colors.green;
                  });
                }

              },
              child: Text(
                result[index].questionText, textAlign: TextAlign.center,),
            );
          }
      ),
    );
  }
  Widget selection6(List<Question>result) {

    return SizedBox(
      height: 150,
      width: 150,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: result[index].questionAnswer ? right6 : wrong6,
                onPrimary: Colors.black,
              ),
              onPressed: () {
                // print('Click');
                if(result[index].questionAnswer == true ){
                  // print('yo');
                  setState(() {
                    right6 = Colors.green;
                  });
                }

              },
              child: Text(
                result[index].questionText, textAlign: TextAlign.center,),
            );
          }
      ),
    );
  }


  Widget localAsset() {
    return _Tab(
      children: [
        Column(
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 120,
                  width: 210,
                  decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      // Text('Sindhi_cultural_Algoza_saaz\n', style: TextStyle(fontFamily: "Bold"),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _Btn(txt: 'Play', onPressed: () => audioCache.play('audio/Sindhi_cultural_Algoza_saaz.mp3')),
                          _Btn(txt: 'Stop', onPressed: () => advancedPlayer.stop()),
                        ],
                      ),
                    ],
                  ),
                ),
                selection1(_questionList1)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  height: 120,
                  width: 210,
                  decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.all(Radius.circular(10))),

                  child: Column(
                    children: [
                      // Text('Pakistani_pashto_traditional\n',style: TextStyle(fontFamily:'Bold'),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _Btn(txt: 'Play', onPressed: () => audioCache.play('audio/pakistani_pashto_traditional_music.mp3')),
                          _Btn(txt: 'Stop', onPressed: () => advancedPlayer.stop()),
                        ],
                      ),

                    ],
                  ),
                ),
                selection2(_questionList2)

              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  height: 120,
                  width: 210,
                  decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(                    children: [
                      // Text('Folk_music_of_Gilgit Baltistan\n',style: TextStyle(fontFamily:'Bold')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _Btn(txt: 'Play', onPressed: () => audioCache.play('audio/Folk_music_of_Gilgit Baltistan.mp3')),
                          _Btn(txt: 'Stop', onPressed: () => advancedPlayer.stop()),
                        ],
                      ),

                    ],
                  ),
                ),
                selection3(_questionList3)

              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  height: 120,
                  width: 210,
                  decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      // Text('Folk_song_of_Kashmir\':\n', style: TextStyle(fontFamily:'Bold')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _Btn(txt: 'Play', onPressed: () => audioCache.play('audio/Fok_song_of_Kashmir.mp3')),
                          _Btn(txt: 'Stop', onPressed: () => advancedPlayer.stop()),
                        ],
                      ),

                    ],
                  ),
                ),
                selection4(_questionList4)

              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  height: 120,
                  width: 210,
                  decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      // Text('Energatic_Bhangra_Beat\':\n', style: TextStyle(fontFamily:'Bold')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _Btn(txt: 'Play', onPressed: () => audioCache.play('audio/Energatic_Bhangra_Beat.mp3')),
                          _Btn(txt: 'Stop', onPressed: () => advancedPlayer.stop()),
                        ],
                      ),

                    ],
                  ),
                ),
                selection5(_questionList5)


              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 120,
                  width: 210,
                  decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      // Text('Beautiful_Balochi_folk_song\':\n',style: TextStyle(fontFamily:'Bold')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _Btn(txt: 'Play', onPressed: () => audioCache.play('audio/Beautiful_Balochi_folk_song.mp3')),
                          _Btn(txt: 'Stop', onPressed: () => advancedPlayer.stop()),
                        ],
                      ),

                    ],
                  ),
                ),
                selection6(_questionList6)

              ],
            ),
          ]
        ),

        SizedBox(height: 10,),

        // getLocalFileDuration(),
      ],
    );
  }

  Future<int> _getDuration() async {
    File audiofile = await audioCache.load('audio/Sindhi_cultural_Algoza_saaz.mp3');
    await advancedPlayer.setUrl(
      audiofile.path,
    );
    int duration = await Future.delayed(
      Duration(seconds: 2),
          () => advancedPlayer.getDuration(),
    );
    return duration;
  }

  getLocalFileDuration() {
    return FutureBuilder<int>(
      future: _getDuration(),
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text('No Connection...');
          case ConnectionState.active:
          case ConnectionState.waiting:
            return Text('Awaiting result...');
          case ConnectionState.done:
            if (snapshot.hasError) return Text('Error: ${snapshot.error}');
            return Text(
              'audio2.mp3 duration is: ${Duration(milliseconds: snapshot.data)}',
            );
          default:
            return Container();
        }
      },
    );
  }
}


class _Tab extends StatelessWidget {
  final List<Widget> children;

  const _Tab({@required this.children});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(vertical:10.0),
        child: SingleChildScrollView(
          child: Column(
            children: children
                .map((w) => Container(child: w,))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class _Btn extends StatelessWidget {
  final String txt;
  final VoidCallback onPressed;

  const _Btn({@required this.txt, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 48.0,
      child: ElevatedButton(child: Text(txt), onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
        ),),
    );
  }
}