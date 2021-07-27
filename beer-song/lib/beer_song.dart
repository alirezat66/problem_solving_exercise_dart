class BeerSong {
  List<String> recite(int currentBottels, int repeat) {
    List<String> result = [];
    int localBottels = currentBottels;
    for (int i = 0; i < repeat; i++) {
      result.add(localBottels - i == 0
          ? 'No more bottles of beer on the wall, no more bottles of beer.'
          : localBottels - i == 1
              ? '1 bottle of beer on the wall, 1 bottle1 of beer.'
              : '${localBottels - i} bottles of beer on the wall, ${localBottels - i} bottles of beer.');
      result.add(localBottels - i == 0
          ? 'Go to the store and buy some more, 99 bottles of beer on the wall.'
          : localBottels - i == 1
              ? 'Take it down and pass it around, no more bottles of beer on the wall.'
              : 'Take one down and pass it around, ${localBottels - i - 1} bottles of beer on the wall.');
      if (localBottels - i == 0) {
        localBottels = 99 + i + 1;
      }
    }
    return result;
  }
}
