class Allergies {
  final Map<int, String> _allergens = {
    1: 'eggs',
    2: 'peanuts',
    4: 'shellfish',
    8: 'strawberries',
    16: 'tomatoes',
    32: 'chocolate',
    64: 'pollen',
    128: 'cats',
  };
  
    bool allergicTo(String allergen, int allergenScore) {
    return list(allergenScore).contains(allergen);
  }

  List<String> list(int allergenScore) {
    List<String> result = [];

    if (allergenScore <= 0) return result;

    int rest = allergenScore;
    if (rest ~/ _allergens.keys.last >= 1)
      rest = _allergens.keys.last + (rest % _allergens.keys.last);

    for (var score in List<int>.from(_allergens.keys).reversed) {
      if ((rest - score) >= 0) {
        rest -= score;
        result.add(_allergens[score]);
      }
    }

    return result.reversed.toList();
  }
  // Put your code here
}
