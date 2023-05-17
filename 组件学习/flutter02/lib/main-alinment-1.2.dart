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
//使用Align组件里面的 alignment、属性控制Text的位置
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

   //获取设备的宽度和高度
   // final size = MediaQuery.of(context).size;
   //(了解）算法：（Alignment.x*childwidth／2＋childWidth／2，Alignment.y＊childHeight/2 + childHeight/2
    final size = MediaQuery.of(context).size; //获取屏幕的宽度
    return Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Align(
          alignment:Alignment(-1,1),
           child: Text('你好flutter')
           ),
       );
  }
}
