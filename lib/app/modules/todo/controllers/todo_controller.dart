import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Todo {
  String title;

  Todo({
    required this.title,
  });
}

class TodoController extends GetxController {
  var todos = <Todo>[].obs;
  TextEditingController textEditingController = TextEditingController();
  void add(String title) {
    todos.add(Todo(title: title));
  }

/*  void addFFirebase()async{
    await FirebaseFireStore.instance.collections("Todo").doc().set({
      "Title":textEditingController.text
    }).then((value) => textEditingController.clear() );
  }*/
  void remove(int index) {
    todos.removeAt(index);
  }
}
