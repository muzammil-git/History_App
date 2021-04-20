import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class checkPlayer extends StatefulWidget {
  static const String id = 'Player';

  @override
  _checkPlayerState createState() => _checkPlayerState();
}

class _checkPlayerState extends State<checkPlayer> {

  YoutubePlayerController _controller;

  @override
  void initState(){
    _controller = YoutubePlayerController(
      initialVideoId: 'jNQXAC9IVRw',
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        // hideControls: false
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.lightGreen,
              height: 200,
              width: 300,
              child: YoutubePlayer(

                controller: _controller,
                showVideoProgressIndicator: true,
                onReady: () {
                  print('Player is ready.');
                },

              ),
            )
          ],
        ),
      )

    );
  }
}
