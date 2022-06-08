import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_bmi/reusablecard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gendercard.dart';
import 'constants.dart';
import 'calculativepart.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Color malecardcolor = inactivecard;
Color femalecardcolor = inactivecard;

enum Gentype {
  male,
  female,
  none,
}

int height = 60;
int weight = 60;
int age = 20;

Gentype selectedgender = Gentype.none;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        selectedgender = Gentype.male;
                      });
                    }),
                    child: Reusablecard(
                      cardcolor: (selectedgender == Gentype.male)
                          ? selectedcolor
                          : inactivecard,
                      createwidget: const GenderCard(
                        gendertypeicon: FontAwesomeIcons.mars,
                        gender: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = Gentype.female;
                      });
                    },
                    child: Reusablecard(
                      cardcolor: selectedgender == Gentype.female
                          ? selectedcolor
                          : inactivecard,
                      createwidget: const GenderCard(
                        gendertypeicon: FontAwesomeIcons.venus,
                        gender: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Reusablecard(
                cardcolor: inactivecard,
                createwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'HEIGHT',
                      style: textdesign,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kHeightweightcardstyle,
                        ),
                        const Text(
                          ' cm',
                          style: kHeightweightcardstyle,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.pink,
                        thumbColor: Colors.pink,
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 10),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 20),
                        overlayColor: const Color.fromRGBO(44, 20, 45, 5),
                        inactiveTrackColor: Colors.grey,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 60.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablecard(
                    cardcolor: inactivecard,
                    createwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: textdesign,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '$weight kg',
                          style: kHeightweightcardstyle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            MyCustomButton(
                              icontype: FontAwesomeIcons.minus,
                              requiredjob: (() {
                                setState(() {
                                  if (weight > 2) weight -= 1;
                                });
                              }),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MyCustomButton(
                              icontype: FontAwesomeIcons.plus,
                              requiredjob: (() {
                                setState(() {
                                  weight += 1;
                                });
                              }),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Reusablecard(
                  cardcolor: inactivecard,
                  createwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'AGE',
                        style: textdesign,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '$age',
                        style: kHeightweightcardstyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          MyCustomButton(
                            icontype: FontAwesomeIcons.minus,
                            requiredjob: (() {
                              setState(() {
                                if (age > 1) age -= 1;
                              });
                            }),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          MyCustomButton(
                            icontype: FontAwesomeIcons.plus,
                            requiredjob: (() {
                              setState(() {
                                age += 1;
                              });
                            }),
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              int k = 0;
              if (selectedgender == Gentype.male) {
                operationtimemale();
                ++k;
              } else if (selectedgender == Gentype.female) {
                operationtimefemale();
                ++k;
              } else if (selectedgender == Gentype.none) {
                Alert(
                  style: AlertStyle(
                    backgroundColor: selectedcolor,
                    descStyle: GoogleFonts.alikeAngular(fontSize: 15),
                    titleStyle: GoogleFonts.alikeAngular(color: Colors.white),
                  ),
                  context: context,
                  type: AlertType.error,
                  title: "Warning",
                  desc: "Please select your Gender",
                ).show();
              }

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return const ResultPage();
              //     },
              //   ),
              // ); // if you created routes on start page than youo can directly navigate as below.
              if (k == 1) {
                Navigator.pushNamed(context, 'result');
              }
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
                  'CALCULATE',
                  style: kCalculatebuttonstyle,
                )),
          ),
        ],
      ),
    );
  }
}

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({Key? key, this.icontype, @required this.requiredjob})
      : super(key: key);

  final IconData? icontype;
  final void Function()? requiredjob;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.grey,
      onPressed: requiredjob,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 6,
      constraints: const BoxConstraints.tightFor(height: 56, width: 56),
      child: Icon(icontype),
    );
  }
}
