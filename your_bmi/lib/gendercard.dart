import 'package:flutter/material.dart';
import 'package:your_bmi/constants.dart';

class GenderCard extends StatelessWidget {
  const GenderCard(
      {Key? key, @required this.gendertypeicon, @required this.gender})
      : super(key: key);

  final IconData? gendertypeicon;
  final String? gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gendertypeicon,
          size: 80,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          '$gender',
          style: textdesign,
        ),
      ],
    );
  }
}
