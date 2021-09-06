import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildKey({Color color, int n}) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        playSound(n);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, n: 1),
              buildKey(color: Colors.orange, n: 2),
              buildKey(color: Colors.yellow, n: 3),
              buildKey(color: Colors.green, n: 4),
              buildKey(color: Colors.teal, n: 5),
              buildKey(color: Colors.blue, n: 6),
              buildKey(color: Colors.purple, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
