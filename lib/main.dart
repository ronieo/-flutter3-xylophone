import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildXylophone({Color color, int noteNum}) {
   return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: (){
            playSound(noteNum);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildXylophone(color: Colors.red, noteNum: 1),
                buildXylophone(color: Colors.orange, noteNum: 2),
                buildXylophone(color: Colors.yellow, noteNum: 3),
                buildXylophone(color: Colors.green, noteNum: 4),
                buildXylophone(color: Colors.blue, noteNum: 5),
                buildXylophone(color: Colors.indigo, noteNum: 6),
                buildXylophone(color: Colors.purple, noteNum: 7),

              ],
            ),
        ),
      ),
    );
  }
}
