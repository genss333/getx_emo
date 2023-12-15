import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:get/get.dart';
import 'package:getx_emo/screens/result/constants/result_constants.dart';
import 'package:getx_emo/screens/result/controller/result_controller.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResultController>(
      init: ResultController(),
      autoRemove: true,
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(FlutterI18n.translate(context, txtResult)),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  FlutterI18n.refresh(context, const Locale(localeThai, ''));
                },
                child: const Text(txtThai),
              ),
              TextButton(
                onPressed: () {
                  FlutterI18n.refresh(context, const Locale(localeEng, ''));
                },
                child: const Text(txtEng),
              ),
            ],
          ),
          body: Center(
            child: Text(
              '${FlutterI18n.translate(context, txtWin)} ${controller.model.value}',
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => controller.onShowJson(),
              child: const Text(btnSubmit),
            ),
          ),
        );
      },
    );
  }
}
