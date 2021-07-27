class Raindrops {
  String convert(int rain) {
    return rain % 3 == 0
        ? 'Pling'
        : rain % 5 == 0
            ? 'Plang'
            : rain % 7 == 0
                ? 'Plong'
                : '$rain';
  }
}
