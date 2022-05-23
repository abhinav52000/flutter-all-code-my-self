import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int guess = 4;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 198, 210),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 238, 98, 145),
          title: const Text(
            'Ask Me Anyhting',
            style: TextStyle(fontFamily: 'koulen', fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SafeArea(
              child: Center(
            child: Column(
              children: <Widget>[
                const Text(
                  'Once you selected your question in mind.\n \t\t\t\t\t\tclick on me for random answer',
                  style: TextStyle(fontFamily: 'koulen', fontSize: 20),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          guess = Random().nextInt(5) + 1;
                          print(guess);
                        });
                      },
                      child: Image(image: AssetImage('images/ball$guess.png'))),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
