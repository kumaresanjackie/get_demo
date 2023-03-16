import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/addimage_controller.dart';

class AddimageView extends GetView<AddimageController> {
   AddimageView({Key? key}) : super(key: key);
  var controller = Get.put(AddimageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
controller.uploadImageToFirebaseStorage();
            },
            child: Text('Select and Upload Image'),
          ),
          // Obx to display the uploaded image using the download URL
          Obx(() {
            if (controller.imageUrl.value.isNotEmpty) {
              return Image.network(controller.imageUrl.value);
            } else {
              return SizedBox.shrink();
            }
          }),
        ],
      ),
    );
  }
}