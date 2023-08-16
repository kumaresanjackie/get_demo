import 'package:get/get.dart';

class CounterpageController extends GetxController {
  //TODO: Implement CounterpageController

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    print("initState");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    count.value++;
    update();
  }

  void decincrement() {
    count.value--;
    update();
  }
}
