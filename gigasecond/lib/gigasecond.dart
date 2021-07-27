import 'dart:math';

DateTime add(final DateTime birthDate) {
  DateTime input = birthDate;
  input = input.add(new Duration(seconds: pow(10,9).round()));
  return input;
}
