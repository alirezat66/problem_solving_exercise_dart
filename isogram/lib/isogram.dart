class Isogram {
  bool isIsogram(String word) {
    bool isIsogram = true;
    word.replaceAll(' ', '');
    word.replaceAll(new RegExp(r'[^\w\s]+'), '');
    for (int i = 0; i < word.length; i++) {
      if (word.indexOf(word[i]) != word.lastIndexOf(word[i])) {
        isIsogram = false;
        break;
      }
    }
    return isIsogram;
  }
}
