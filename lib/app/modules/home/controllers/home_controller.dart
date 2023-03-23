import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../isromodel_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final Uri apiUrl = Uri.parse('https://isro.vercel.app/api/spacecrafts');
  final RxList<Isromodel> dataList = RxList<Isromodel>();

  void fetchData() async {
    final response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      final List<Map<String,dynamic>> jsonList = jsonDecode(response.body);

      dataList.assignAll(
        jsonList.map((json) => Isromodel.fromJson(json)).toList(),
      );
      print(dataList);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  void main() {
    // Creating and using our controller class
    final myController = HomeController();
    myController.fetchData();
    print(myController.dataList); // Prints the parsed data list
  }

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
