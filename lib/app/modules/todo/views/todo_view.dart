import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/todo_controller.dart';

class TodoView extends StatelessWidget {
  TodoView({Key? key}) : super(key: key);
  final controller = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.todos.length,
                itemBuilder: (context, index) {
                  final todo = controller.todos[index];
                  print(todo.title);
                  return ListTile(
                    title: Text(todo.title),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => controller.remove(index),
                    ),
                  );
                },
              ),
            ),
          ),
          TextField(
            controller: controller.textEditingController,
            onSubmitted: (value) {},
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
              hintText: 'Add Todo',
              suffixIcon: IconButton(
                  onPressed: () {
                    controller.add(controller.textEditingController.text);
            controller.textEditingController.clear();
                    Get.focusScope?.unfocus();
                    var n =controller.todos;
                  },
                  icon: Icon(Icons.send)),
              contentPadding: EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }
}
