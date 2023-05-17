import 'package:flutter/material.dart';
import './res/listData.dart';
//Text的位置
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
        // body: Myapp(),
        // body: Myapp1(),
        body: Myapp2(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    ));
  }
}

//自定义StatelessWidget组件  无状态组件，状态不可变的widget  stless
//使用 Container 里面的 alignment属性控制Text的位置
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    final size = MediaQuery.of(context).size; //获取屏幕的宽度
    return Container(
      alignment: Alignment.topCenter,
      width: 200,
      height: 200,
      color: Colors.red,
      child: Text('你好flutter'),
    );
  }
}

//自定义StatelessWidget组件  无状态组件，状态不可变的widget  stless
//使用Align组件里面的 alignment、属性控制Text的位置
class Myapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    final size = MediaQuery.of(context).size; //获取屏幕的宽度
    return Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Align(alignment: Alignment.bottomCenter, child: Text('你好flutter')));
  }
}



//自定义StatelessWidget组件  无状态组件，状态不可变的widget  stless
//使用Center组件里面的 alignment、属性控制Text的位置
class Myapp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    final size = MediaQuery.of(context).size; //获取屏幕的宽度
    return Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Center(child: Text('你好flutter')));
  }
}
