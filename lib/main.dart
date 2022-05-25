import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildButton({required Color color , required int soundNumber , required var title}){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(title),
        color: color,
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
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton(color:Colors.red , soundNumber:1 , title:"R"),
              buildButton(color:Colors.orange , soundNumber:2 , title:"O"),
              buildButton(color:Colors.yellow , soundNumber:3 , title:"Y"),
              buildButton(color:Colors.green , soundNumber:4 , title:"G"),
              buildButton(color:Colors.blue , soundNumber:5 , title:"B"),
              buildButton(color:Colors.indigo , soundNumber:6 , title:"I"),
              buildButton(color:Colors.purple , soundNumber:7 , title:"V"),
            ],
          ),
        ),
      ),
    );
  }
}
