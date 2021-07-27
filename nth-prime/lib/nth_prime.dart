import 'dart:math';

class NthPrime {
  int prime(int num) {
    if (num < 1) {
      throw ArgumentError(
          'There is no zeroth prime an ArgumentError with the message "There is no zeroth prime"');
    } else {
      if (num == 1) return 2;
      _oddNumbersGenerator().where(_isPrimeNumber).take(num - 1).last;
    }
  }

  bool _isPrimeNumber(int number) {
    for (int i = 3; i <= sqrt(number); i += 2) {
      if (number % i == 0) return false;
    }
    return true;
  }

  Iterable<int> _oddNumbersGenerator() sync* {
    int current = 1;
    yield current += 2;
  }

  // Put your code here
}
