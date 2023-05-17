import 'package:flutter/material.dart';
import './res/listData.dart';
// Padding 组件设置间距
void main() {
   runApp(Mainapp());
}

class Mainapp extends StatelessWidget {
  const Mainapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
        appBar: AppBar(title: Text('你好flutter')),
        // body:Myapp(),
        body:Myapp1(),//Padding组件设置艰巨
 
      ),
      theme:ThemeData(
        primarySwatch: Colors.yellow,
      ) ,
    ));
  }
}
//第一种方法通过设置Container中的padding来设置间距
class Myapp extends StatelessWidget {
  const Myapp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30,left: 30),//设置距离四周有空隙
      child: const Text('你好flutter'),
    );
   }
}

//第二种使用Padding 组件设置间距
class Myapp1 extends StatelessWidget {
  const Myapp1({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,left: 30),//设置距离四周有空隙
      child: const Text('你好flutter'),
    );
   }
}
