import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counterpage_controller.dart';

class CounterpageView extends StatelessWidget {
  CounterpageView({Key? key}) : super(key: key);
  var counterController = Get.put(CounterpageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterpageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Text('Count: ${counterController.count}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        counterController.increment();
        print(counterController.count);
      }),
    );
  }
}
