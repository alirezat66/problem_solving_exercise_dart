class Bob {
  String response(String sentence) {
    if (sentence.trim().endsWith('?')) {
      if (isCapitalSentence(sentence)) {
        return 'Calm down, I know what I\'m doing!';
      } else {
        return 'Sure';
      }
    } else if (isCapitalSentence(sentence)) {
      return 'Whoa, chill out!';
    } else if (sentence.trim() == '') {
      return 'Fine. Be that way!';
    } else {
      return 'Whatever.';
    }
  }

  bool isCapitalSentence(String sentence) {
    return sentence.toUpperCase() == sentence;
  }
}
