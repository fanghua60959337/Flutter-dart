import 'package:flutter/material.dart';

//一、初始化加载一个组件
// void main() {
// //   // StatelessWidget 无状态组件，状态不可变的自定义 widget
// //   runApp(MaterialApp(
// //     home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
// //       appBar: AppBar(title: Text('你好flutter')),
// //       body:Myapp(),//加载一个组件
// //     ),
// //     theme:ThemeData(
// //       primarySwatch: Colors.yellow,
// //     ) ,
// //   ));
// // }


//二、初始化加载一个多个组件
void main() {
  // StatelessWidget 无状态组件，状态不可变的自定义 widget
  runApp(MaterialApp(
    home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
      appBar: AppBar(title: Text('你好flutter')),
      body: Column(
      children: [Myapp(),MyButton(),MyText()]
    )),
    theme:ThemeData(
      primarySwatch: Colors.yellow,
    ) ,
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Center(
      child:Container(
        margin:const EdgeInsets.fromLTRB(0, 60, 0, 0) ,
        alignment: Alignment.topLeft,
        width: 100,
        height: 100,
        // transform: Matrix4.translationValues(40, 0, 0),//位移
        // transform: Matrix4.rotationZ(0.2),//位移旋转
        transform: Matrix4.skewY(20),//位移旋转
        decoration: BoxDecoration( //decoration 可以设置:背景色 背景图 边框 圆角 阴影 渐变色 的等属性
            color: Colors.red,//设置背景颜色
            border: Border.all(
                color: Colors.blue,
                width: 2
            ),
            borderRadius: BorderRadius.circular(50),//设置圆角
            boxShadow: [BoxShadow(color: Colors.brown,blurRadius: 10.0)],//配置阴影
            // gradient:LinearGradient(colors: [Colors.yellow,Colors.red]),//线性颜色渐变
            gradient:RadialGradient (colors: [Colors.yellow,Colors.red]),//镜像渐变

        ),
        child:const Text('你好我是一个自定义组件',style:TextStyle(
            color: Colors.white,
            fontSize: 5
        )),
      ),
    );
  }
}



// /
// class Myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     // throw UnimplementedError();
//     return Center(
//       child:Container(
//         alignment: Alignment.topRight,
//         width: 100,
//         height: 100,
//         decoration: BoxDecoration( //decoration 可以设置:背景色 背景图 边框 圆角 阴影 渐变色 的等属性
//           color: Colors.red,
//         ),
//         child:const Text('你好我是一个自定义组件',style:TextStyle(
//             color: Colors.white,
//             fontSize: 5
//       ),
//     );
//   }
// }

class  MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
       alignment: Alignment.center,
      // margin: const EdgeInsets.all(10),//全部设置外边距
        margin: const EdgeInsets.fromLTRB(0,20,0,0),
        // padding: const EdgeInsets.fromLTRB(20,0,0,0),//设置内边距
        width: 200,
        height: 40,
        decoration:BoxDecoration( //decoration 可以设置:背景色 背景图 边框 圆角 阴影 渐变色 的等属性
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text('按钮',style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.fromLTRB(0, 40, 0,0),
      decoration: BoxDecoration(
      color: Colors.brown
      ),
      child: const Text('你好我flutter中的Text你好我flutter中的Text你好我flutter中的Text你好我flutter中的Text你好我flutter中的Text你好我flutter中的Text',textAlign:TextAlign.center,
         maxLines: 1,
         overflow: TextOverflow.ellipsis,//益处显示...
         style:TextStyle(
             color: Colors.blue,
             fontSize: 20,
             fontWeight: FontWeight.w900,
             fontStyle: FontStyle.italic,//倾斜
             letterSpacing: 5,
             decoration: TextDecoration.underline,//下划线
             decorationStyle: TextDecorationStyle.dashed//虚线
         ),
      ),
    );
  }
}
