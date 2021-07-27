int score(String s) {
  int sumScore = 0;
  s = s.toUpperCase();
  for (int i = 0; i < s.length; i++) {
    switch (s[i]) {
      case ('A'):
      case ('E'):
      case ('I'):
      case ('O'):
      case ('U'):
      case ('L'):
      case ('N'):
      case ('R'):
      case ('S'):
      case ('T'):
        sumScore += 1;
        break;
      case ('D'):
      case ('G'):
        sumScore += 2;
        break;
      case ('B'):
      case ('C'):
      case ('M'):
      case ('P'):
        sumScore += 3;
        break;
      case ('F'):
      case ('H'):
      case ('V'):
      case ('W'):
      case ('Y'):
        sumScore += 4;
        break;
      case ('K'):
        sumScore += 5;
        break;
      case ('J'):
      case ('X'):
        sumScore += 8;
        break;
      default:
        sumScore += 10;
        break;
    }
  }
  return sumScore;
}
