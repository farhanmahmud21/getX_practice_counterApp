import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyCounterApp());
}

class MyCounterApp extends StatelessWidget {
  MyCounterApp({super.key});
  // RxInt counter = 0.obs;
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterController.increament();
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Obx(() => Text(counterController.counter.toString())),
        ),
      ),
    );
  }
}

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  void increament() {
    counter++;
  }
}
