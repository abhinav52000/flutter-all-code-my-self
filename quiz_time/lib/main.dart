import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';

Quizbrain quiz_brain = Quizbrain();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 31, 71, 91),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 10, 30, 77),
            title: Text(
              'Quiz Now',
              style: GoogleFonts.merriweather(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          body: const MyAppbody()),
    );
  }
}

class MyAppbody extends StatefulWidget {
  const MyAppbody({Key? key}) : super(key: key);
  @override
  State<MyAppbody> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppbody> {
  List<Widget> showanswer = [
    Text(
      'Answer: ',
      style: GoogleFonts.katibeh(
        color: Colors.green,
        fontSize: 30,
      ),
    )
  ];
  void checkanswer(bool userchoice) {
    setState(() {
      if (quiz_brain.islast() == true) {
        Alert(
          context: context,
          title: 'Finished',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        quiz_brain.reset();

        showanswer.clear();

        showanswer = [
          Text(
            'Answer: ',
            style: GoogleFonts.katibeh(
              color: Colors.green,
              fontSize: 30,
            ),
          )
        ];
      } else {
        if (quiz_brain.getanswer() == userchoice) {
          showanswer.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          showanswer.add(
            const Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quiz_brain.nextquestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Center(
                child: Text(
                  quiz_brain.getquestion(),
                  style: GoogleFonts.katibeh(
                    textStyle:
                        const TextStyle(color: Colors.yellow, fontSize: 30),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  checkanswer(true);
                },
                child: const Center(child: Text('True')),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  checkanswer(false);
                },
                child: const Center(child: Text('False')),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: showanswer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
