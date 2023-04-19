import 'package:flutter/material.dart';
import './myFont.dart';
//ListView
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
      children: const<Widget> [
        ListTile(
          leading: Icon(Icons.payment,color: Colors.green),
          title: Text('全部订单'),
          trailing:Icon(Icons.chevron_right),//向右的箭头
        ),
        Divider(),//分割线
        ListTile(
          leading: Icon(Icons.payment,color: Colors.yellow),
          title: Text('代付款'),
          trailing:Icon(Icons.chevron_right),//向右的箭头
        ),
        Divider(),//分割线
        ListTile(
          leading: Icon(Icons.payment,color: Colors.yellow),
          title: Text('代付款'),
          trailing:Icon(Icons.chevron_right),//向右的箭头
        ),
        Divider(),//分割线
        ListTile(
          leading: Icon(Icons.payment,color: Colors.yellow),
          title: Text('代付款'),
          trailing:Icon(Icons.chevron_right),//向右的箭头
        ),
        Divider(),//分割线
      ],
    );
  }
}
