import 'dart:math';

class PrimeFactors {
  List<int> factors(int number) {
    List<int> nums = [];
    if (number >= 2) {
      while (number >= 2) {
        nums.add(minimumPrimeNumber(number));
        number  = (number/ minimumPrimeNumber(number)).round();
      }
    }
    return nums;
  }

  int minimumPrimeNumber(int number) {
    int minNumber = 1;
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        if (primeNumber(number)) {
          minNumber = number;
          break;
        }
      }
      
    }
    return minNumber;
  }

  bool primeNumber(int number) {
    if (number < 2) {
      return false;
    }
    for (int i = 2; i <= sqrt(number); i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }
}
