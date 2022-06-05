import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_bmi/resultpage.dart';
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
          color: const Color.fromRGBO(16, 19, 53, 100),
          titleTextStyle: GoogleFonts.robotoCondensed(
            textStyle: const TextStyle(fontSize: 30),
          ),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(12, 18, 52, 100),
        // sliderTheme: SliderTheme.of(context).copyWith(
        //   activeTrackColor: Colors.pink,
        //   thumbColor: Colors.pink,
        //   thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
        //   overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
        //   overlayColor: const Color.fromRGBO(44, 20, 45, 5),
        //   inactiveTrackColor: Colors.grey,
        // ), /* ye yhaa bhi likh skte hai par hme slider ek hi dalna hai to whi sath mai hi kyo na likh de
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('YOUR BMI'),
        ),
        body: const InputPage(),
      ),
      routes: {
        'inputpage': (context) => const InputPage(),
        'result': (context) => const ResultPage()
      },
    );
  }
}
