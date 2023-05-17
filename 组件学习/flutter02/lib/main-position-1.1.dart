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
        // body: Myapp(),
        body: Myapp1(),
        // body: Myapp2(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    ));
  }
}

//通过Align 这只居左 和居右
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text('返回'),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text('设置'),
              )
            ],
          ),
        )
      ],
    );
  }
}

//通过postition 这只居左 和居右
class Myapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          child: Stack(
            children: [
              Positioned(
                left: 10,
                child: Text('返回'),
              ),
              Positioned(
                right: 10,
                child: Text('设置'),
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 40,
          child: Stack(
            children: [
              Positioned(
                left: 10,
                child: Text('返回'),
              ),
              Positioned(
                right: 10,
                child: Text('设置'),
              )
            ],
          ),
        )
      ],
    );
  }
}

//通过postition 这只居左 和居右
class Myapp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      child: Stack(
        children: [
          Positioned(
            left: 10,
            child: Text('返回'),
          ),
          Positioned(
            right: 10,
            child: Text('设置'),
          )
        ],
      ),
    );
  }
}
