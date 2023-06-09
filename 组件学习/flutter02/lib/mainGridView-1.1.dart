import 'package:flutter/material.dart';
// GridView使用
void main() {
  // StatelessWidget 无状态组件，状态不可变的自定义 widget
  runApp(MaterialApp(
    home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
      appBar: AppBar(title: Text('你好flutter')),
      // body:Myapp(),
      body:Myapp1(),
    ),
    theme:ThemeData(
      primarySwatch: Colors.yellow,
    ) ,
  ));
}

//GridView.count
class Myapp extends StatelessWidget {
  const Myapp({Key? key}):super(key: key);
  // List<Widget> _initGridViewData(){
  // List<Widget> templist = [];
  // for(var i = 0; i< 12;i++){
  //
  // }
  //
  // }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    //实现网格布局的方法：
    // 1通过GridView.count   通过crossAxisCount控制列
    // 2、GridView.extent   通过maxCrossAkisExtent 自是适应控制
    // 3、GridView.build实现动态网格布局
    return GridView.count(
       crossAxisCount: 3,//crossAxisCount 设置现实多少列
       children: [
          Icon(Icons.pedal_bike),
          Icon(Icons.home),
          Icon(Icons.ac_unit),
          Icon(Icons.pedal_bike),
          Icon(Icons.settings),
          Icon(Icons.pedal_bike),
          Icon(Icons.beach_access),
          Icon(Icons.cake),
          Icon(Icons.pedal_bike),
          Icon(Icons.pedal_bike),
          Icon(Icons.pedal_bike),
          Icon(Icons.pedal_bike),
          Icon(Icons.circle),
       ],
     );
  }
}


//GGridView.extent
class Myapp1 extends StatelessWidget {
  const Myapp1({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    //实现网格布局的方法：
    // 1通过GridView.count   通过crossAxisCount控制列
    // 2、GridView.extent   通过maxCrossAkisExtent 自是适应控制
    // 3、GridView.build实现动态网格布局
    return GridView.extent(
      maxCrossAxisExtent:80,// 横轴子元素的最大长度
      children: const [
        Icon(Icons.pedal_bike),
        Icon(Icons.home),
        Icon(Icons.ac_unit),
        Icon(Icons.pedal_bike),
        Icon(Icons.settings),
        Icon(Icons.pedal_bike),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.pedal_bike),
        Icon(Icons.pedal_bike),
        Icon(Icons.pedal_bike),
        Icon(Icons.pedal_bike),
        Icon(Icons.circle),
      ],
    );
  }
}

