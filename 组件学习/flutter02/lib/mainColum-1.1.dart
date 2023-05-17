import 'package:flutter/material.dart';
import './res/listData.dart';

//  Column组件使用
void main() {
  runApp(Mainapp());
}

class Mainapp extends StatelessWidget {
  const Mainapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        //Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
        appBar: AppBar(title: Text('你好flutter')),
        body: Myapp(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    ));
  }
}

//第一种方法通过设置Container中的padding来设置间距
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //设置占满屏幕
      height: double.infinity, //设置占满屏幕 height: double.maxFinite,
      child: Column(
        //外部没有Container 行是自适应的 注意这里上上面不添加Container容器的话他就不能剧中显示 因为他不知道父容器是谁
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround, //设置主轴方向显示位置
        children: [
          IconContaioner(Icons.home, color: Colors.blue),
          IconContaioner(Icons.home, color: Colors.red),
          IconContaioner(Icons.home, color: Colors.blue),
        ],
      ),
    );
  }
}

class IconContaioner extends StatelessWidget {
  Color color;
  IconData icon;

//通过构造函数传递颜色和图标
  IconContaioner(this.icon, {Key? key, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: this.color,
        width: 80,
        height: 120,
        child: Center(child: Icon(this.icon, color: Colors.white, size: 28)));
  }
}
