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

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
            elevation: 10, //阴影值的深度
            shadowColor: Colors.red,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(50)
            ),
            color: Colors.amber,
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                    title: Text('张三', style: TextStyle(fontSize: 20)),
                    subtitle: Text('三年级一班', style: TextStyle(fontSize: 15))),
                Divider(),
                ListTile(
                  title: Text('电话：15818731124'),
                ),
                ListTile(
                  title: Text('地址：北京市海淀区'),
                ),
              ],
            )),
        Card(
            elevation: 10, //添加阴影
            color: Colors.amber,
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                    title: Text('张三', style: TextStyle(fontSize: 20)),
                    subtitle: Text('三年级一班', style: TextStyle(fontSize: 15))),
                Divider(),
                ListTile(
                  title: Text('电话：15818731124'),
                ),
                ListTile(
                  title: Text('地址：北京市海淀区'),
                ),
              ],
            )),
        Card(
            elevation: 10, //添加阴影
            color: Colors.amber,
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                    title: Text('张三', style: TextStyle(fontSize: 20)),
                    subtitle: Text('三年级一班', style: TextStyle(fontSize: 15))),
                Divider(),
                ListTile(
                  title: Text('电话：15818731124'),
                ),
                ListTile(
                  title: Text('地址：北京市海淀区'),
                ),
              ],
            )),
        Card(
            child: Column(
          children: [
            ListTile(
                title: Text('张三', style: TextStyle(fontSize: 20)),
                subtitle: Text('三年级一班', style: TextStyle(fontSize: 15))),
            Divider(),
            ListTile(
              title: Text('电话：15818731124'),
            ),
            ListTile(
              title: Text('地址：北京市海淀区'),
            ),
          ],
        )),
      ],
    );
  }
}
