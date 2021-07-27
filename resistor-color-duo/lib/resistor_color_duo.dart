class ResistorColorDuo {
  List<String> colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];
  int value(List<String> inputes) {
    return colors.indexOf(inputes[0]) * 10 + colors.indexOf(inputes[1]);
  }
}
