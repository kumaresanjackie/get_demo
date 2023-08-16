import 'dart:io';

import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image_picker/image_picker.dart';

class AddimageController extends GetxController {
  //TODO: Implement AddimageController

  // Create a reference to the Firebase storage instance
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  // Create an RxString to store the download URL for the uploaded image
  RxString imageUrl = RxString('');

  // Function to upload an image to Firebase storage and update the download URL
  Future<void> uploadImageToFirebaseStorage() async {
    try {
      // Open the device's image picker to select an image
      final imagePicker = ImagePicker();
      final pickedImage =
          await imagePicker.pickImage(source: ImageSource.gallery);

      // Create a reference to the image file in Firebase storage
      final firebase_storage.Reference imageRef =
          storage.ref().child('images/${DateTime.now().toString()}');

      // Upload the image file to Firebase storage
      await imageRef.putFile(File(pickedImage!.path));

      // Get the download URL for the image file
      final String downloadUrl = await imageRef.getDownloadURL();

      // Update the download URL in the imageUrl RxString
      imageUrl.value = downloadUrl;
    } catch (e) {
      print(e);
    }
  }
}
