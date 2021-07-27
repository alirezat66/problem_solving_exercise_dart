import 'dart:math';

class Darts {
  Point center = new Point(0, 0);
  int score(double x, double y) {
    return _getPoint(new Point(x, y));
  }

  int _getPoint(Point dart) {
    var distance = dart.distanceTo(center);
    return distance <= 1
        ? 10
        : distance <= 5
            ? 5
            : distance <= 10
                ? 1
                : 0;
  }

  // Put your code here
}
