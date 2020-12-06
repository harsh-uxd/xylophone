import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playSound(int soundNumber) {
      final player = AudioCache();
      player.play('note$soundNumber.wav');
    }

    Expanded buildSoundKey({Color color, int track}) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: FlatButton(
              color: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {
                playSound(track);
              },
              child: null),
        ),
      );
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildSoundKey(color: Colors.red, track: 1),
                    buildSoundKey(color: Colors.orange, track: 2),
                    buildSoundKey(color: Colors.yellow, track: 3),
                    buildSoundKey(color: Colors.green, track: 4),
                    buildSoundKey(color: Colors.blue, track: 5),
                    buildSoundKey(color: Colors.indigo, track: 6),
                    buildSoundKey(color: Colors.purple, track: 7),
                  ]),
            ),
          ),
        ));
  }
}
