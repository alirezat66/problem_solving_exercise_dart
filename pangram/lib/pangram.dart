class Pangram {
  bool isPangram(String s) {
    return s.split('').toSet().toList().length == 26;
  }
  // Put your code here
}
