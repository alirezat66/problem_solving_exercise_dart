class ResistorColor {
  List<String> colors = ['black',
            'brown',
            'red',
            'orange',
            'yellow',
            'green',
            'blue',
            'violet',
            'grey',
            'white',];
  int colorCode(String colorName) {
    
    return colors.indexOf(colorName);
  }
}
