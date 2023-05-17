import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          ListTile(title: Text('我是分类')),
          ListTile(title: Text('我是分类')),
          ListTile(title: Text('我是分类')),
          ListTile(title: Text('我是分类')),
        ],
      ),
    );
  }
}
