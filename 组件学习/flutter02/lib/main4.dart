import 'package:flutter/material.dart';
import './res/listData.dart';
void main() {
   runApp(Mainapp());
}

class Mainapp extends StatelessWidget {
  const Mainapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
        appBar: AppBar(title: Text('你好flutter')),
        body:Myapp(),
      ),
      theme:ThemeData(
        primarySwatch: Colors.yellow,
      ) ,
    ));
  }
}

class Myapp extends StatelessWidget {
   Myapp({Key? key}) : super(key: key){
    print(listData);
   }
   //使用 map遍历
   List<Widget> _initListData(){
     var list = listData.map((value){
     return ListTile(
         leading: Image.network("${value['imageUrl']}"),
         title: Text('${value['title']}'),
         subtitle: Text('${value['author']}'),
        );
     });
     return list.toList();
 }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return ListView(
      children:_initListData(),
    );
  }
}

