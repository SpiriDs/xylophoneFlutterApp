import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //functions

  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Expanded buttons({Color color, int soundNo}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNo);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttons(color: Colors.red, soundNo: 1),
              buttons(color: Colors.orange, soundNo: 2),
              buttons(color: Colors.yellow, soundNo: 3),
              buttons(color: Colors.green, soundNo: 4),
              buttons(color: Colors.teal, soundNo: 5),
              buttons(color: Colors.blue, soundNo: 6),
              buttons(color: Colors.purple, soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
