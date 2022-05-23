import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playmusic(int musickey) {
    final player = new AudioCache();
    player.play('note$musickey.wav');
  }

  Expanded createkey({Color colorname = Colors.white, int musickey = 1})
  // Here jo {} mai dla hai parameter list ko it allows you to have flexiblity ki aap phle kiska paramaeter pass karte hai aur kiska nhi
  // Even in case koi value nhi bhi provide karte ho to wo default value ko use kar lega hence default value dena must hai.
  // And iske sath ye bhi you can miss one parameter as input it will use default value for that parameter.
  {
    return Expanded(
      child: FlatButton(
        color: colorname,
        minWidth: double.infinity,
        onPressed: () {
          playmusic(musickey);
        },
        child: const Text('Hit Here Abhinav'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 216, 153),
        appBar: AppBar(
          title: const Text(
            'Music Player',
            style: TextStyle(fontFamily: 'wordart', fontSize: 30),
          ),
          backgroundColor: const Color.fromARGB(255, 216, 154, 30),
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              createkey(colorname: Colors.blue, musickey: 1),
              createkey(colorname: Colors.greenAccent, musickey: 2),
              createkey(colorname: Colors.yellowAccent, musickey: 3),
              createkey(colorname: Colors.orange, musickey: 4),
              createkey(colorname: Colors.pinkAccent, musickey: 5),
              createkey(colorname: Colors.purpleAccent, musickey: 6),
              createkey(colorname: Colors.lightBlueAccent, musickey: 7),
            ],
          ),
        ),
      ),
    );
  }
}
