import 'package:flutter/material.dart';
import 'package:flutter02/mainGridView-1.1.dart';
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

//Wrap  使用
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10, //水平方向的间距
      runSpacing: 5, //垂直方向的间距
      // direction: Axis.vertical,//排列方向  默认是水平优先排列
      alignment: WrapAlignment.spaceAround, //排列方式，默认是居左排列
      children: [
        Button('第一集', onPressed: () {}),
        Button('第一集', onPressed: () {}),
        Button('第一集', onPressed: () {}),
        Button('第一集', onPressed: () {}),
        Button('第6集已经更新完毕', onPressed: () {}),
        Button('第一集', onPressed: () {}),
        Button('第一集', onPressed: () {}),
        Button('第8集即将播出', onPressed: () {}),
        Button('第一集', onPressed: () {}),
        Button('第一集', onPressed: () {}),
      ],
    );
  }
}

//Wrap  使用
class Myapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Wrap(
        children: [
          Button('第一集', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第6集已经更新完毕', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第8集即将播出', onPressed: () {}),
          Button('第一集', onPressed: () {}),
          Button('第一集', onPressed: () {}),
        ],
      ),
    );
  }
}

//自定义按钮
class Button extends StatelessWidget {
  String text;
  void Function()? onPressed;
  Button(this.text, {Key? key, required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(242, 255, 244, 244)),
          foregroundColor: MaterialStateProperty.all(Colors.black45),
        ),
        onPressed: onPressed,
        child: Text('第一集'));
  }
}
