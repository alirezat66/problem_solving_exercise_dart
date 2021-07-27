class SecretHandshake {
  List<String> commands(int i) {
     List<String> handshakes = [];

    if (i & 1 == 1) handshakes.add('wink');
    if (i & 2 == 2) handshakes.add('double blink');
    if (i & 4 == 4) handshakes.add('close your eyes');
    if (i & 8 == 8) handshakes.add('jump');
    if (i & 16 == 16) handshakes.reversed.toList();

    return handshakes;
  }
  // Put your code here
}
