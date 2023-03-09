import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_demo/app/modules/loginpage/controllers/loginpage_controller.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SignupController());
    var controlle2 = Get.put(LoginpageController());

    return Scaffold(

      body:  Column(mainAxisSize: MainAxisSize.min,children: [
        TextField(controller: controller.nameController,),
        TextField(controller: controller.emailController,),
        TextField(controller: controller.passwordController,),
        TextField(controller: controller.cpasswordController,),
        TextField(controller: controller.phonenumberController,),
        TextButton(onPressed: (){
          print(controlle2.count);
          // controller.createuser();
        }, child: Text("Login"))
      ],),
    );
  }
}
