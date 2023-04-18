import 'package:flutter/material.dart';
// void main() {
//   runApp(MaterialApp(
//     home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
//       appBar: AppBar(title: Text('你好flutter')),
//       body: const Center(//Center剧中组件
//         child: Text('你好flutter',
//             textDirection: TextDirection.ltr,
//             style: TextStyle(
//                 color:Color.fromARGB(244, 244, 123,1),fontSize: 40)),
//       ),
//     ),
//     theme:ThemeData(
//       primarySwatch: Colors.yellow,
//     ) ,
//   ));
// }

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
  const Myapp({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Center(
      child:Text('你好Flutter'),
    );
  }
}