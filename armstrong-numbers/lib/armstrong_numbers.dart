import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    int sum = 0;
    int counter = 1;
    while (number > 0) {
      int firstDigit = number % 10;
      sum += pow(firstDigit, counter++).round();
      number = (number / 10).round();
    }
    String s = '';
    s.split('');
    return sum == number;
  }
}
