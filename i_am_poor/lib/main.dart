import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("I am poor"),
          backgroundColor: Colors.orange,
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Container(
                color: Colors.black,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.blue.shade600
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red.shade900,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade500,
                      ),
                    ],
                  ),
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
