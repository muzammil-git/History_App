import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShowVideo extends StatefulWidget {

  static const id ="showVideo";

  ShowVideo({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _ShowVideoState createState() => _ShowVideoState();
}

class _ShowVideoState extends State<ShowVideo> {
  // YoutubePlayerController _controller;
  final List<YoutubePlayerController> _controllers = [
    'K6DSMZ8b3LE',
    '-84U1EsZCbY',
    'gFIS3aLQPfs',
    'dk8zDjQT0aE',
    'JR-J_4d2_0A',
    'dbok-clxaU4',
    'toMEqGyYRjE',
    'mGnm89Rfi98',
    '63vpbtMubgQ',
    'MjxGwfa5lxw',
    '9sKn61qKcdc&t=8s',
    'lD5SSTuX6aY',
    'K5OEJVahJmA',
    '-Nf-LozASF4',
    'f1zhTPVktL0',
    'Fs8Qj9tTDr0',
    '0uA-749lts0',
    'FddY38rvAkY',
    '-SqAnRHya9E',
    '_BNDNNWSvz8',
    '38UUz15fEzo',
    'DHnHpHkwqs4&t=22s',
    'CgSQe64SP6c&t=51s',
    'M_HsXzPpYCg'


  ]
      .map<YoutubePlayerController>
    (
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();

  @override
  void initState(){
    // _controller = YoutubePlayerController(
    //   initialVideoId: 'm9YmLmYzeEI',
    //   flags: YoutubePlayerFlags(
    //     mute: false,
    //     autoPlay: true,
    //   ),
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return ListView.separated(
      itemBuilder: (context, index) {
        return YoutubePlayer(
          key: ObjectKey(_controllers[index]),
          controller: _controllers[index],
          actionsPadding: const EdgeInsets.only(left: 16.0),
          bottomActions: [
            CurrentPosition(),
            const SizedBox(width: 10.0),
            ProgressBar(isExpanded: true),
            const SizedBox(width: 10.0),
            RemainingDuration(),
            FullScreenButton(),
          ],
        );
      },
      itemCount: _controllers.length,
      separatorBuilder: (context, _) => const SizedBox(height: 10.0),
    );
    //   YoutubePlayer(
    //   controller: _controller,
    //   showVideoProgressIndicator: true,
    //   onReady: () {
    //     print('Player is ready.');
    //   },
    // );
  }
}