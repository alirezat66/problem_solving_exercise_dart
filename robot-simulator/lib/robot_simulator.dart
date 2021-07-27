import 'package:robot_simulator/orientation.dart';
import 'package:robot_simulator/position.dart';

class Robot {
  Robot(this.position, this.orientation);
  Position position;
  Orientation orientation;
  void move(String s) {
    List<String> sList = s.split(s);
    sList.forEach((e) {
      if (e == 'A') {
        _chengeValue();
      } else if (e == 'R') {
        _turnRight();
      } else {
        _turnLeft();
      }
    });
  }
void _turnRight() {
    switch (orientation) {
      case Orientation.east:
        orientation = Orientation.south;
        break;
      case Orientation.west:
        orientation = Orientation.north;
        break;
      case Orientation.north:
        orientation = Orientation.east;
        break;
      default:
        orientation = Orientation.west;
        break;
    }
  }
  void _turnLeft() {
    switch (orientation) {
      case Orientation.east:
        orientation = Orientation.north;
        break;
      case Orientation.west:
        orientation = Orientation.south;
        break;
      case Orientation.north:
        orientation = Orientation.west;
        break;
      default:
        orientation = Orientation.east;
        break;
    }
  }
  void _chengeValue() {
    switch (orientation) {
      case Orientation.east:
        position.x++;
        break;
      case Orientation.west:
        position.x--;
        break;
      case Orientation.north:
        position.y++;
        break;
      default:
        position.y--;
        break;
    }
  }
  // Put your code here
}
