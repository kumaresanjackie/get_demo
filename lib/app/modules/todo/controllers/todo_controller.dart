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

  void remove(int index) {
    todos.removeAt(index);
  }
}
