class Acronym  {
  String abbreviate(String sentence) {
    sentence = sentence
        .toLowerCase()
        .replaceAll(new RegExp(r"(' | ')"), " ")
        .replaceAll(new RegExp(r"[.,?!:;" "@&@\$%\^]+"), " ")
        .replaceAll(new RegExp(r"\s+"), " ")
        .trim();
    var words = sentence.split(' ');
    String finalWord =
        words.fold('', (finalWord, element) => finalWord + element[0]);
    return finalWord.toUpperCase();
  }

  
}
