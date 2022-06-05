import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_bmi/reusablecard.dart';
import 'constants.dart';
import 'calculativepart.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result page'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'YOUR RESULT',
                  style: kresulttagstyle,
                ),
                Expanded(
                    child: Reusablecard(
                  cardcolor: inactivecard,
                  createwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        bmistatus,
                        style: (bmi >= 18.5 && bmi <= 24.5)
                            ? kBmiStatusStyleNormal
                            : kBmiStatusStyleNotNormal,
                      ),
                      Text(
                        '$bmi',
                        style: kHeightweightcardstyle,
                      ),
                      Column(
                        children: [
                          Text(
                            'NORMAL BMI RANGE IS:',
                            style: GoogleFonts.alef(
                                fontSize: 20, color: Colors.grey),
                          ),
                          Text(
                            '18.5 to 24.5',
                            style: GoogleFonts.alef(
                                fontSize: 20, color: Colors.grey),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          recommendation,
                          style: kCalculatebuttonstyle,
                        ),
                      )
                    ],
                  ),
                )),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.pink,
                      ),
                      height: 60,
                      child: const Text(
                        'RE-CALCULATE',
                        style: kCalculatebuttonstyle,
                      )),
                ),
              ]),
        ),
      ),
    );
  }
}
