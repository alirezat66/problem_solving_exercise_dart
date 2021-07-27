class WordCount {
  Map<String, int> countWords(String sentence) {
    sentence = sentence
        .toLowerCase()
        .replaceAll(new RegExp(r"(' | ')"), " ")
        .replaceAll(new RegExp(r"[.,?!:;" "@&@\$%\^]+"), " ")
        .replaceAll(new RegExp(r"\s+"), " ")
        .trim();
    sentence = sentence.toLowerCase();
    var wordList = sentence.split(' ');
    Map<String, int> wordMap = {};
    wordList.forEach((element) => wordMap[element] =
        wordList.where((item) => item == element).toList().length);

    return wordMap;
  }
}
