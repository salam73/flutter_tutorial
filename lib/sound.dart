import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Sound extends StatelessWidget {
  Expanded soundKey({color: Color, number:int}) => Expanded(
        child: FlatButton(
          onPressed: () {
            final player=AudioCache();
            player.play('note$number.wav');
          },
          child: Container(
            color: color,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              soundKey(color: Colors.green,number: 1),
              soundKey(color: Colors.red, number: 2),
              soundKey(color: Colors.yellow, number: 3),
              soundKey(color: Colors.blue, number: 4),
              NewWidget(color: Colors.orange, number: 5,),
              NewWidget(color: Colors.lightGreen, number: 6,),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  NewWidget({this.color, this.number});

  final Color color;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player=AudioCache();
          player.play('note$number.wav');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
