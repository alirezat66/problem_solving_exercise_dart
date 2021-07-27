class Diamond {
  List<String> letters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];
  List<String> rows(String s) {
    int index = letters.indexOf(s);
    List<String> finalString = [];
    for (int i = 0; i <= index; i++) {
      String s = '';
      for (int j = 0; j <= index * 2; j++) {
        s += ((index - j == i) || (j - index) == i) ? letters[i] : ' ';
      }
      finalString.add(s);
    }
    List<String> reverseOfString = finalString.reversed.toList();
    reverseOfString.removeAt(0);
    finalString.addAll(reverseOfString);
    return finalString;
  }
  // Put your code here
}
