class Triangle {
  bool equilateral(double i, double j, double k) {
    return i == j && j == k;
  }

  bool isosceles(double i, double j, double k) {
    if (i == j || i == k || j == k) {
      List<double> list = [i, j, k];
      list.sort();
      if (list.last < 2 * list[0]) {
        return true;
      }
    }
    return false;
  }

  bool scalene(double d, double e, double f) {
    List<double> list = [d, e, f];
    list.sort();
    return list[2] / list[1] == list[1] / list[0];
  }

  // Put your code here
}
