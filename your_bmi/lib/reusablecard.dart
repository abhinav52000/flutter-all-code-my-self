import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  const Reusablecard({
    Key? key,
    @required this.cardcolor,
    this.createwidget,
  }) : super(key: key);

  final Color? cardcolor;
  final Widget? createwidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: cardcolor,
      ),
      child: createwidget,
    );
  }
}
