import 'dart:html';

import 'package:flutter/material.dart';
// listview 动态列表
void main() {
  // StatelessWidget 无状态组件，状态不可变的自定义 widget
  runApp(MaterialApp(
    home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
      appBar: AppBar(title: Text('你好flutter')),
      body:Myapp(),
    ),
    theme:ThemeData(
      primarySwatch: Colors.yellow,
    ) ,
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
    List<Widget> _initListData(){
    List<Widget> list = [];
    for(var i=0;i<=20; i++){
        list.add(
          ListTile( title: Text('我是一个静态列表---$i'),
        ),
      );
    }
    return list;
 }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return ListView(
      children:_initListData(),
    );
  }
}