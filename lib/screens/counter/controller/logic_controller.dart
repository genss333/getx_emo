import 'package:get/get.dart';

class LogicController extends GetxController {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
  }

  void decrementCounter() {
    counter > 0 ? _counter-- : _counter = 0;
  }

  void resetCounter() {
    _counter = 0;
  }
}
