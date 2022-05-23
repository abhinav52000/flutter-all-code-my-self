import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyApp> {
  int leftdice = 2, rightdice = 1;
  void dicechange() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Dicee'),
          elevation: 10,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: <Widget>[
              const Text(
                'Roll the dice.',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1553481187-be93c21490a9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGRpY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        dicechange();
                      },
                      child: Image.asset('images/dice$leftdice.png'),
                    ),
                  ),
                  Expanded(
                      child: FlatButton(
                          onPressed: () {
                            dicechange();
                          },
                          child: Image.asset('images/dice$rightdice.png'))),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
