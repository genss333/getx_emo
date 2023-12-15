import 'package:get/get.dart';
import 'package:getx_emo/screens/counter/constants/counter_constants.dart';
import 'package:getx_emo/screens/counter/controller/logic_controller.dart';
import 'package:getx_emo/screens/counter/controller/victory_state.dart';

class CounterController extends GetxController {
  final logicController1 = Get.put(LogicController(), tag: controllerTag1);
  final logicController2 = Get.put(LogicController(), tag: controllerTag2);

  VictoryState victoryController = VictoryState();

  void incrementCounter(String tag) {
    if (tag == controllerTag1) {
      logicController1.incrementCounter();
      update();
      victoryController.checkVictory(logicController1.counter, controllerTag1);
    } else {
      logicController2.incrementCounter();
      update();
      victoryController.checkVictory(logicController2.counter, controllerTag2);
    }
  }

  void decrementCounter(String tag) {
    if (tag == controllerTag1) {
      logicController1.decrementCounter();
      update();
      victoryController.checkVictory(logicController1.counter, controllerTag1);
    } else {
      logicController2.decrementCounter();
      update();
      victoryController.checkVictory(logicController2.counter, controllerTag2);
    }
  }

  void resetCounter(String tag) {
    if (tag == controllerTag1) {
      logicController1.resetCounter();
      update();
      victoryController.checkVictory(logicController1.counter, controllerTag1);
    } else {
      logicController2.resetCounter();
      update();
      victoryController.checkVictory(logicController2.counter, controllerTag2);
    }
  }
}
