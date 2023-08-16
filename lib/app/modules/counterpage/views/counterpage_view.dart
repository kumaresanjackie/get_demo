import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counterpage_controller.dart';

class CounterpageView extends StatelessWidget {
  CounterpageView({Key? key}) : super(key: key);
  final counterController = Get.put(CounterpageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterpageView'),
        centerTitle: true,
      ),
      body: Center(
        // GetBuilder will automatically rebuild the children when the count changes.
        child:  GetBuilder<CounterpageController>(
            builder: (controller) => Column(
              children: [
                Text(
                  'Count: ${controller.count}',
                  style: TextStyle(fontSize: 24),
                ),
                FloatingActionButton(onPressed: () {
                  controller.increment();
                },child: Icon(Icons.add),),
                FloatingActionButton(onPressed: () {
                  controller.decincrement();
                }, child: Icon(Icons.exposure_minus_1),),
              ],
            ),
          ),
     /*   child: Obx(
          () {
            return Text('Count: ${counterController.count}');
          }
        ),*/
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: () {
            counterController.increment();
          },child: Icon(Icons.add),),
          FloatingActionButton(onPressed: () {
            counterController.decincrement();
          }, child: Icon(Icons.exposure_minus_1),),
        ],
      ),
    );
  }
}

class Counte extends StatefulWidget {
  const Counte({Key? key}) : super(key: key);

  @override
  State<Counte> createState() => _CounteState();
}

class _CounteState extends State<Counte> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
      body: Text("${count}"),
    );
  }
}
