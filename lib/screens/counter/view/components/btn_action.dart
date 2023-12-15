import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_emo/screens/counter/constants/counter_constants.dart';
import 'package:getx_emo/screens/counter/controller/counter_controller.dart';

class BtnAction extends StatelessWidget {
  const BtnAction({
    super.key,
    required this.heroTag,
    required this.tag,
  });
  final HeroTagCounterModel heroTag;
  final String tag;
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              heroTag: heroTag.decrement,
              onPressed: () => controller.decrementCounter(tag),
              tooltip: decrementTooltip,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              heroTag: heroTag.reset,
              onPressed: () => controller.resetCounter(tag),
              tooltip: resetTooltip,
              child: const Icon(Icons.loop),
            ),
            FloatingActionButton(
              heroTag: heroTag.increment,
              onPressed: () => controller.incrementCounter(tag),
              tooltip: incrementTooltip,
              child: const Icon(Icons.add),
            ),
          ],
        );
      },
    );
  }
}

class HeroTagCounterModel {
  final String decrement;
  final String reset;
  final String increment;

  const HeroTagCounterModel({
    required this.decrement,
    required this.reset,
    required this.increment,
  });
}
