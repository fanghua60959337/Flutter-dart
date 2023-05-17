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
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 400,
          width: 300,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.yellow,
        ),
        Text('你好我是一个自定义组件',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.black, fontSize: 15))
      ],
    );
  }
}
