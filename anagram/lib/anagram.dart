class Anagram {
  List<String> findAnagrams(String word, List<String> refrence) {  
    return refrence.where((element) => sortedWord(word)==sortedWord(element)).toList();
  }

  String sortedWord(String word) {
    return (word.toLowerCase().split('')..sort()).join();
  }
}
