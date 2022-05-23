import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'inputpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: const Color.fromRGBO(12, 18, 52, 100),
          titleTextStyle: GoogleFonts.robotoCondensed(
            textStyle: const TextStyle(fontSize: 30),
          ),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(12, 18, 52, 100),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('YOUR BMI'),
        ),
        body: SafeArea(
          child: Column(
            children: const <Widget>[
              Expanded(child: InputPage()),
              Expanded(child: InputPage()),
              Expanded(child: InputPage()),
            ],
          ),
        ),
      ),
    );
  }
}
