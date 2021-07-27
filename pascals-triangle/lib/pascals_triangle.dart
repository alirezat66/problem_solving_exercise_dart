class PascalsTriangle {
  List<List<int>> rows(int index) {
    List<List<int>> outerList = [
    ];

    if (index == 1) {
      outerList.add([1]);
    } else if (index == 2) {
      outerList.add([1,1]);
    }
    for (int i = 2; i <= index; i++) {
      List<int> innerList = [1];
      for (int j = 1; j < i - 1; j++) {
        innerList.add(outerList[i - 1][j] + outerList[i - 1][j - 1]);
      }
      innerList.add(1);
      outerList.add(innerList);
    }
    return outerList;
  }
  // Put your code here
}
