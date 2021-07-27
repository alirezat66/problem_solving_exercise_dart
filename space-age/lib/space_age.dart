import 'dart:math';

class SpaceAge {
  final int earthYearSeconds = 31557600;
  final Map<String, double> planetMap = {
    "Mercury": 0.2408467,
    "Venus": 0.61519726,
    "Earth": 1.0,
    "Mars": 1.8808158,
    "Jupiter": 11.862615,
    "Saturn": 29.447498,
    "Uranus": 84.016846,
    "Neptune": 164.79132
  };
  double age({String planet, int seconds}) {
    double period = planetMap[planet];
    double age = roundOffToXDecimal(period * seconds / earthYearSeconds);
    return age;
  }

  double roundOffToXDecimal(double number, {int numberOfDecimal = 2}) {
    // To prevent number that ends with 5 not round up correctly in Dart (eg: 2.275 round off to 2.27 instead of 2.28)
    String numbersAfterDecimal = number.toString().split('.')[1];
    if (numbersAfterDecimal != '0') {
      int existingNumberOfDecimal = numbersAfterDecimal.length;
      number += 1 / (10 * pow(10, existingNumberOfDecimal));
    }

    return double.parse(number.toStringAsFixed(numberOfDecimal));
  }
}
