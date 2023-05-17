import 'package:flutter/material.dart';
import 'Home/home.dart';
import 'Category/category.dart';
import 'Mine/Setting/setting.dart';
import 'Mine/mine.dart';
import 'Dymic/dymic.dart';

//创建tab中间凸起按钮
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
        //添加tab中间按钮
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked, //设置中间浮动按钮位置
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: () {},
        // ),
        floatingActionButton: Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.only(top: 5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            //color: Colors.black12, //边框颜色
            color: Colors.white, //边框颜色
            borderRadius: BorderRadius.circular(25),
          ),
          child: FloatingActionButton(
            child: const Icon(Icons.add),
            backgroundColor: _currentindext == 2 ? Colors.red : Colors.blue,
            onPressed: () {
              setState(() {
                _currentindext = 2;
              });
            },
          ),
        ),
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
