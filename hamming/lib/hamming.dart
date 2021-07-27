class Hamming {
  int distance(String a, String b) {
    int distance = 0;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) {
        distance++;
      }
    }
    return distance;
  }
}
