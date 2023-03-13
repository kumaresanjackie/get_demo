import 'package:get/get.dart';

import '../controllers/counterpage_controller.dart';

class CounterpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterpageController>(
      () => CounterpageController(),
    );
  }
}
