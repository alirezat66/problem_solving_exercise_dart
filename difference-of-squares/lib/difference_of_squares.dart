import 'dart:math';

class DifferenceOfSquares {
  List<int> listTo(int max) {
    return List<int>.generate(max, (index) => index + 1);
  }

  int sumOfSquares(int num) {
    int squers =
        listTo(num).fold(0, (sum, number) => sum + pow(number, 2).round());
    return squers;
  }

  int differenceOfSquares(int num) {
    new List<int>.generate(num, (i) => i + 1);
    return squareOfSum(num) - sumOfSquares(num);
  }

  int squareOfSum(int num) {
    int sum = listTo(num).fold(0, (sum, number) => sum + number);
    return pow(sum, 2).round();
  }
}
