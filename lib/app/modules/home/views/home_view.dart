import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../isromodel_model.dart';

class HomeView extends GetView<HomeController> {
   HomeView({Key? key}) : super(key: key);
var data = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
data.main();
data.fetchData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
