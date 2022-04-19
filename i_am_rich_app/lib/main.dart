import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: const Text("I'M RICH APP"),
          backgroundColor: Colors.grey[900],
        ),
        body: Center(
          child: Image(
              image: new NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl-YEmGayp5aE5Q--KM6Hhge0bUtk2Lh1n9A&usqp=CAU')),
        ),
      ),
    ),
  );
}
