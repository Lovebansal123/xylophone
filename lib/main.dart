import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


 void soundplay(int soundnumber){
   final player = AudioCache();
   player.play('assets_note$soundnumber.wav');
 }
 Expanded buildclass(Color color,int soundnumber){
   return Expanded(
     child: TextButton(
       style: TextButton.styleFrom(backgroundColor: color),
       onPressed: () {
         soundplay(soundnumber);
       },
       child: Text(''),
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
              buildclass(Colors.green, 1),
              buildclass(Colors.red, 2),
              buildclass(Colors.yellow, 3),
              buildclass(Colors.teal, 4),
              buildclass(Colors.orange, 5),
              buildclass(Colors.blue, 6),
              buildclass(Colors.purple, 7),
            ],
          )
        ),
      ),
    );
  }
}