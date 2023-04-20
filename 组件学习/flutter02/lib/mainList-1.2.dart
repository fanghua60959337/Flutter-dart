import 'package:flutter/material.dart';
import './myFont.dart';
// 自定义ListView -scrollDection 使用 Axis.horizontal水平列表Axis.vertical垂直列表
void main() {
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

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ListView(//如果想上下滑动可以将Column改成 ListView
      // padding:const EdgeInsets.all(10),
      padding:const EdgeInsets.fromLTRB(10, 10, 10, 10),
      children: <Widget> [
        Image.network('https://www.itying.com/images/flutter/1.png'),
        Container(
          padding:const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child:Text('我是一个标题',textAlign: TextAlign.center,style: TextStyle(fontSize: 22),),
        ),
        Image.network('https://www.itying.com/images/flutter/1.png'),
        Container(
          padding:const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child:Text('我是一个标题',textAlign: TextAlign.center,style: TextStyle(fontSize: 22),),
        ),
        Image.network('https://www.itying.com/images/flutter/1.png'),
        Container(
          padding:const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child:Text('我是一个标题',textAlign: TextAlign.center,style: TextStyle(fontSize: 22),),
        ),
        Divider(),//分割线
      ],
    );
  }
}


              //   Expanded(child: Column(
              //       Expanded(child:  Image.network('https://www.itying.com/images/flutter/1.png')),
              //       Expanded(child:  Image.network('https://www.itying.com/images/flutter/1.png')),
              //   ),flex:1),
              //  ), 
