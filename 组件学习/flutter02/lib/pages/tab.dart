import 'package:flutter/material.dart';
import 'package:flutter02/pages/tabs/home.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/setting.dart';
import './tabs/mine.dart';



class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentindext = 0;
  final List<Widget> _pages = const [HomePage(),CategoryPage(), SettingPage(), MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutterapp')),
        body: _pages[_currentindext],
        bottomNavigationBar: BottomNavigationBar(
          iconSize:25,
          fixedColor: Colors.blue,//设置选中item颜色
        type: BottomNavigationBarType.fixed,//如果要设置4个以上他item需要添加这个
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
            BottomNavigationBarItem(icon: Icon(Icons.people), label: '我的'),

          ],
        ));
  }
}
