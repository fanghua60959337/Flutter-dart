import 'package:flutter/material.dart';
void main() {
  // StatelessWidget 无状态组件，状态不可变的自定义 widget


  runApp(MaterialApp(
    home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
      appBar: AppBar(title: Text('你好flutter')),
      body: Myapp(),
    ),
    theme:ThemeData(
      primarySwatch: Colors.yellow,
    ) ,
  ));
}

//自定义StatelessWidget组件  无状态组件，状态不可变的widget  stless
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return const Center(
      child: Text('你好我是一个自定义组件',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color:Colors.red,fontSize: 40)
      ),
    );
  }
}
