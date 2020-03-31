import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildkey({int soundno,Color color}){
    return  Expanded(
      child: FlatButton(
        color:color ,
        onPressed: (){
          final player = AudioCache();
          player.play('note$soundno.wav');
        }, ),
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
              buildkey(soundno :1,color:Colors.red),
            buildkey(soundno: 2,color:Colors.blue),
          buildkey(soundno :3,color:Colors.orange),
        buildkey(soundno :4,color:Colors.purple),
    buildkey(soundno :5,color:Colors.yellow),
    buildkey(soundno:6,color:Colors.green),
    buildkey(soundno :7,color:Colors.pink[200]),



            ],
          ),
        ),
      ),
    );
  }
}
