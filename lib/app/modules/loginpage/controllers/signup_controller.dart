import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/app/modules/home/views/home_view.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  final count = 0.obs;
  Future<void> createuser()async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text).then((value) => Get.to(HomeView()));
  }
  @override
  void onInit() {
    super.onInit();

    print("SingUp Page");
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
