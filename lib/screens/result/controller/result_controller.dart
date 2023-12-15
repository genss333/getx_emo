import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_emo/screens/result/model/result_model.dart';

class ResultController extends GetxController {
  final ResultModel model = Get.arguments;

  void onShowJson() {
    Get.defaultDialog(
      title: 'Result Model Json',
      content: Text(
        model.toJson().toString(),
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
