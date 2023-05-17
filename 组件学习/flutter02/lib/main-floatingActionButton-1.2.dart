import 'package:flutter/material.dart';
import 'package:flutter02/mainGridView-1.1.dart';
import './res/listData.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final List<String> _list = []; //注意final定义的可以多次添加值，如果是赋值的话只能赋一次
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutterapp')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _list.add('我是一个新增列表');
            });
          },
          child: Icon(Icons.add),
        ),
        body: ListView(
          children: _list.map((v) {
            return ListTile(
              title: Text(v),
            );
          }).toList(),
        ));
  }
}
