import 'package:flutter/material.dart';
import 'package:flutter02/mainGridView-1.1.dart';
import './res/listData.dart';

void main() {
  runApp(HomePage()); 
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter Domo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Myapp(),
    );
  }
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter app"),
      ),
      body: Center(
          child: Column(
        children: [Text('12'), SizedBox(height: 100)],
      )),
    );
  }
}

