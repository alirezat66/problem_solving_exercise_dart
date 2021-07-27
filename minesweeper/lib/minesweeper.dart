class Minesweeper {
  final List<String> input;

  Minesweeper(this.input);
  List<List<String>> _changeAllAround(int i, int j, List<List<String>> list) {
    int startIndex = j > 0 ? j - 1 : j;
    int endIndex = j + 1 < list.length ? j + 1 : j;
    for (startIndex; startIndex < endIndex; startIndex++) {
      if(i!=0){
        list[i - 1][startIndex] = _changeItem(list[i - 1][startIndex]);
      }
      list[i][startIndex] = _changeItem(list[i][startIndex]);
      if(i<list.length){
        list[i + 1][startIndex] = _changeItem(list[i + 1][startIndex]);
      }
      
    }
    return list;
  }

  String _changeItem(String s) {
    if (s == '') {
      return '1';
    } else if (s == '*') {
      return '*';
    } else {
      return '${(int.tryParse(s) + 1)}';
    }
  }

  List<String> get annoted {
    List<String> finalList = [];
    List<List<String>> innerList = [];
    for (String item in input) {
      innerList.add(item.split(''));
    }
    for (int i = 0; i < innerList.length; i++) {
      for (int j = 0; j < innerList[i].length; j++) {
        if (innerList[i][j] == '*') {
          innerList = _changeAllAround(i, j, innerList);
        }
      }
    }
    for(var list in innerList) {
      finalList.add(list.join());
    }
    return finalList;
  }
}
