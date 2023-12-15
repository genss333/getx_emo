import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx_emo/screens/counter/constants/counter_constants.dart';
import 'package:getx_emo/screens/counter/controller/counter_controller.dart';
import 'package:getx_emo/screens/counter/view/components/btn_action.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      init: CounterController(),
      dispose: (state) {
        state.controller?.logicController1.onClose();
        state.controller?.logicController2.onClose();
      },
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text(title),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    '${controller.logicController1.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    '${controller.logicController2.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BtnAction(
                tag: controllerTag1,
                heroTag: HeroTagCounterModel(
                  decrement: decrement1,
                  reset: reset1,
                  increment: increment1,
                ),
              ),
              Gap(16),
              BtnAction(
                tag: controllerTag2,
                heroTag: HeroTagCounterModel(
                  decrement: decrement2,
                  reset: reset2,
                  increment: increment2,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
