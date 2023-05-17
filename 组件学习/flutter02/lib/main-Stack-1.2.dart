import 'package:flutter/material.dart';
import './res/listData.dart';

//Column/Row -  Row和column都继承自flex使用 使用的时候用 Expend来设置比例
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

//自定义StatelessWidget组件  无状态组件，状态不可变的widget  stless
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        children: [
          Positioned(//注意：相对于父容器容器进行定位，如果没有外部容器就相对于整个屏幕
              left: 0,
              bottom: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              )),
          Positioned(right: 0, top: 200, child: const Text('你好flutter'))
        ],
      ),
    );
  }
}
