import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class HomeController extends GetxController {
  //TODO: Implement HomeController



  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    print("object");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
