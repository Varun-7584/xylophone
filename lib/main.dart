import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider_android/path_provider_android.dart';
void main() {
  runApp(
    Xylophone()
  );
}
class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

////////////////////////////////////////////////////////////////////
  void playSound(int soundNumber) {
    AudioCache player = AudioCache();
    player.play('note$soundNumber.wav');
  }

//////////////////////////////////////////////////////////////////////
  Expanded buildKey({ required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        },child: const Text (''),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body:
          SafeArea(
            child: Column(
              //for the horizontal stretch
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.orange, soundNumber: 2),
                buildKey(color: Colors.yellow, soundNumber: 3),
                buildKey(color: Colors.green, soundNumber: 4),
                buildKey(color: Colors.teal, soundNumber: 5),
                buildKey(color: Colors.blue, soundNumber: 6),
                buildKey(color: Colors.purple, soundNumber: 7),
              ],
            )
          )
      )
    );
  }
}


