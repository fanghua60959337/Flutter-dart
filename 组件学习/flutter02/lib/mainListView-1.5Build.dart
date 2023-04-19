import 'package:flutter/material.dart';
import './res/listData.dart';
// 使用list.builder 构造函数自动遍历数据实现动态列表

void main() {
  // StatelessWidget 无状态组件，状态不可变的自定义 widget
  runApp(MaterialApp(
    home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
      appBar: AppBar(title: Text('你好flutter')),
      body:Myapp(),
    ),
    theme:ThemeData(
      primarySwatch: Colors.yellow,
    ) ,
  ));
}

class Myapp extends StatelessWidget {
   Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context,i){
        return ListTile(
          leading: Image.network("${listData[i]['imageUrl']}"),
          title: Text('${listData[i]['title']}'),
          subtitle: Text('${listData[i]['author']}'),
        );
      },
    );
  }
}
