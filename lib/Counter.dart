import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int value = 0;
  void increment() {
    value += 1;
    notifyListeners();
    print("incremented");
  }

  void reset() {
    value = 0;
    notifyListeners();
  }
}