import 'package:flutter/material.dart';

void main() {
  runApp(MyCounterApp());
}

class MyCounterApp extends StatefulWidget {
  const MyCounterApp({super.key});

  @override
  State<MyCounterApp> createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (mounted) {
              setState(() {
                counter++;
              });
            }
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Text(counter.toString()),
        ),
      ),
    );
  }
}
