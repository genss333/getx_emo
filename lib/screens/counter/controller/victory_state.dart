import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_emo/screens/counter/controller/logic_controller.dart';
import 'package:getx_emo/screens/result/model/result_model.dart';
import 'package:getx_emo/screens/result/view/result_screen.dart';

class VictoryState {
  void checkVictory(int counter, String tag) {
    if (counter == 10) {
      Get.to(
        () => const ResultScreen(),
        arguments: ResultModel(counter, 'You Win!'),
        binding: BindingsBuilder(
          () {
            final controller = Get.find<LogicController>(tag: tag);
            controller.resetCounter();
          },
        ),
        curve: Curves.easeIn,
      );
    }
  }
}
