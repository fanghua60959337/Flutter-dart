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
    final size = MediaQuery.of(context).size; //获取屏幕的宽度
    return Stack(children: [
      ListView(
        padding: const EdgeInsets.only(top: 44),
        children: [
          ListTile(title: Text('我是一个列表1')),
          ListTile(title: Text('我是一个列表2')),
          ListTile(title: Text('我是一个列表3')),
          ListTile(title: Text('我是一个列表4')),
          ListTile(title: Text('我是一个列表5')),
          ListTile(title: Text('我是一个列表6')),
          ListTile(title: Text('我是一个列表7')),
          ListTile(title: Text('我是一个列表8')),
          ListTile(title: Text('我是一个列表9')),
          ListTile(title: Text('我是一个列表10')),
          ListTile(title: Text('我是一个列表11')),
          ListTile(title: Text('我是一个列表12')),
          ListTile(title: Text('我是一个列表13')),
          ListTile(title: Text('我是一个列表14')),
          ListTile(title: Text('我是一个列表15')),
          ListTile(title: Text('我是一个列表16')),
          ListTile(title: Text('我是一个列表17')),
          ListTile(title: Text('我是一个列表18')),
          ListTile(title: Text('我是一个列表19')),
        ],
      ),
      Positioned(
          left: 0,
          bottom: 0,
          //注意这里使用Positioned不设置高度和宽度会奔溃
          width: size.width, //注意这里宽度不能使用 double.infinity，double.infinity主要用于Container 这里配置的是子元素的高度和宽度
          height: 40,
          child: Container(
            alignment: Alignment.center,
            height: 44,
            color: Colors.black,
            child: const Text(
              '二级导航',
              style: TextStyle(color: Colors.white),
            ),
          ))
    ]);
  }
}
