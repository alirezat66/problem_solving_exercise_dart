class IsbnVerifier {
  bool isValid(String s) {
    s = s.trim();
   s = s.split('-').join();
    if (s.length < 10) return false;
    RegExp rForAlphabet = RegExp(r'[^X^x^0-9]');
    RegExp rForCorrectX = RegExp(r'[0-9][X]');
    if (rForAlphabet.hasMatch(s)) return false;
    if (s.contains('X')) {
      if (!rForCorrectX.hasMatch(s)) return false;
    }
    return _checkValidation(s);
  }

  bool _checkValidation(String s) {
    int sum = 0;
    s.split('').asMap().forEach((index, value) {
      sum += ((s.length - index) *
          ((value != 'x' && value != 'X') ? int.parse(value) : 10));
    });

    return sum % 11 == 0;
  }
}
