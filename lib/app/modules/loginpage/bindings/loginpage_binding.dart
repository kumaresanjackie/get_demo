import 'package:get/get.dart';

import 'package:get_demo/app/modules/loginpage/controllers/signup_controller.dart';

import '../controllers/loginpage_controller.dart';

class LoginpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(
      () => SignupController(),
    );
    Get.lazyPut<LoginpageController>(
      () => LoginpageController(),
    );
  }
}
