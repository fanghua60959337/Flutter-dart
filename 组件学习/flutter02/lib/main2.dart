import 'package:flutter/material.dart';
void main() {
// MaterialApp：是一个方便的Widget，它封装了应用程序实现Material Design所需要的一些Widget。一般作为顶层widget使用。
// 常用的属性：
// home（主页）title（标题）color（颜色）theme（主题）routes（路由）
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
  @override
  Widget build(BuildContext context) {
    return const Text('你好flutter');
  }
}

//自定义StatelessWidget组件  无状态组件，状态不可变的widget  stless
// class Myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     // throw UnimplementedError();
//     return const Center(
//       child: Text('你好我是一个自定义组件',
//           textDirection: TextDirection.ltr,
//           style: TextStyle(
//               color:Colors.red,fontSize: 40)
//       ),
//     );
//   }
// }


// class Myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     // throw UnimplementedError();
//     return Center(
//       child:Container(
//         alignment: Alignment.center,
//         width: 100,
//         height: 100,
//         decoration: BoxDecoration( //decoration 可以设置:背景色 背景图 边框 圆角 阴影 渐变色 的等属性
//           color: Colors.red,
//           border: Border.all(
//             color: Colors.red,
//             width: 2
//           )
//         ),
//         child:const Text('你好我是一个自定义组件',style:TextStyle(
//           color: Colors.white,
//           fontSize: 20
//         )),
//       ),
//     );
//   }
// }


//基本结构
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
