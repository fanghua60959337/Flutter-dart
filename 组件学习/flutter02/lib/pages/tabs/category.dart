import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
