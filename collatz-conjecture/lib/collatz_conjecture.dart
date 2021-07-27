class CollatzConjecture {
  int steps(int i) {
    int sum = 0;
    while (i != 1) {
      sum++;
      i = i.isEven ? (i / 2).round() : (i * 3 + 1);
    }
    return sum;
  }
  // Put your code here
}
