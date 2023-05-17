import 'package:flutter/material.dart';
import 'Home/home.dart';
import 'Dymic/dymic.dart';
import 'Category/category.dart';
import 'Mine/Setting/setting.dart';
import 'Mine/mine.dart';
import 'Category/category.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentindext = 0;
  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    DymicPage(),
    MinePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentindext],
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: () {},
        // ),
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 20,
            fixedColor: Colors.red, //设置选中item颜色
            type: BottomNavigationBarType.fixed, //如果要设置4个以上他item需要添加这个
            currentIndex: _currentindext,
            onTap: (indext) {
              setState(() {
                _currentindext = indext;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
              BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.phone_locked), label: '动态'),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: '我的'),
            ]));
  }
}
