import 'package:flutter/foundation.dart';

class ColorCounters extends ChangeNotifier {
  int _redTaps = 0;
  int _blueTaps = 0;

  int get redTaps => _redTaps;
  int get blueTaps => _blueTaps;

  void incrementRed() {
    _redTaps++;
    notifyListeners();
  }

  void incrementBlue() {
    _blueTaps++;
    notifyListeners();
  }
}
