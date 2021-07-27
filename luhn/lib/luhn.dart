class Luhn {
  bool valid(String s) {
    List<String> chars = s.trim().split('');
    if (chars.length <= 1) return false;
    s.replaceAll(new RegExp(r"\D"), "");
    if (chars.length != s.length) return false;
    List<int> digits = chars.map((e) => int.parse(e)).toList();
    for (int i = 0; i < digits.length; i += 2) {
      digits[i] = digits[i] * 2 < 9 ? digits[i] * 2 : digits[i] * 2 - 9;
    }
    int sum = digits.reduce((sum, element) => sum + element);
    return sum % 10 == 0;
  }
}
