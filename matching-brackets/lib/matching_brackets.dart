class MatchingBrackets {
  int weighOfCharacter(String char, String reverseChar, List<String> letters) {
    int weightOfChar = 0;
    weightOfChar = letters.fold(0, (weightOfChar, element) {
      if (element == char) {
        weightOfChar++;
      } else if (element == reverseChar) {
        if (weightOfChar > 0) {
          weightOfChar--;
        } else {
          return -1;
        }
      }
      return weightOfChar;
    });
    return weightOfChar;
  }

  bool isPaired(String s) {
    var letters = s.split('');
    if (weighOfCharacter('[', ']', letters) == 0 &&
        weighOfCharacter('(', ')', letters) == 0 &&
        weighOfCharacter('{', '}', letters) == 0) {
      return true;
    }
    return false;
    // Put your code here
  }
}
