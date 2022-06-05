import 'dart:math';
import 'package:your_bmi/inputpage.dart';

double bmi = 0;
String bmistatus = '';
String recommendation = '';
void operationtimemale() {
  bmi = (weight * 10000) / pow(height, 2);
  bmi = double.parse(bmi.toStringAsFixed(2));
  if (bmi < 18.5) {
    bmistatus = 'UNDER WEIGHT';
    recommendation =
        'You need to make your diet chart look more healthy and balanced.';
  } else if (bmi >= 18.5 && bmi <= 24.5) {
    bmistatus = 'NORMAL';
    recommendation = 'Wohoo!! You are having healthy and balanced diet.';
  } else {
    bmistatus = 'OVER WEIGHT';
    recommendation =
        'You need to control your eating habbit specially for junk food.';
  }
}

void operationtimefemale() {
  bmi = (weight * 10000) / pow(height, 2);
  bmi = double.parse(bmi.toStringAsFixed(2));
  if (bmi < 18.5) {
    bmistatus = 'UNDER WEIGHT';
    recommendation =
        'You look pretty but you need to make your diet chart look a bit healthy and balanced.';
  } else if (bmi >= 18.5 && bmi <= 24.5) {
    bmistatus = 'NORMAL';
    recommendation = 'Wohoo!! You are having healthy and balanced diet.';
  } else {
    bmistatus = 'OVER WEIGHT';
    recommendation =
        'Umm! you are perfect in you own. But You need to control excessive eating habbit.';
  }
}
