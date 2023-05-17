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
      home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
        appBar: AppBar(title: Text('你好flutter')),
        body:Myapp(),
          //  body:Myapp1(),
 
      ),
      theme:ThemeData(
        primarySwatch: Colors.yellow,
      ) ,
    ));
  }
}

// 第一种方法通过设置Row或者Column确定是横轴/纵轴显示
class Myapp extends StatelessWidget {
  const Myapp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row( //外部没有Container 行是自适应的 注意这里上面不添加Container容器的话他就不能剧中显示 因为他不知道父容的大小   Column垂直显示  Row 水平显示
          // crossAxisAlignment:CrossAxisAlignment.start, //整体 剧中显示CrossAxisAlignment.center 整体居左显示CrossAxisAlignment.start  整体居右显示CrossAxisAlignment.end
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,//设置显示位置
          children: [
            Expanded(
               flex: 1,
               child:IconContaioner(Icons.home, color: Colors.blue)
            ),  
            Expanded(
               flex: 1,
               child:IconContaioner(Icons.home, color: Colors.red)
            ),          
          ],
        );
   }
}

class IconContaioner extends StatelessWidget {
Color color;
IconData icon;

//通过构造函数传递颜色和图标
 IconContaioner(this.icon ,{Key? key,required this.color}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: this.color,
        width: 80,
        height: 80,
        alignment: Alignment.center,//如果下面使用Center组件的话这里就可以屏蔽
        child: Icon(this.icon,color: Colors.white,size:28),
      );
   }
}



// //第二种方法通过设置Flex中的direction属性来设置主轴方向
// class Myapp1 extends StatelessWidget {
//   const Myapp1({Key? key}):super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Flex( //这里使用Flex来设置direction来让他水平还是垂直显示，也可以换成 Column垂直显示  Row 水平显示 换了之后下面的direction就要删除
//       direction: Axis.vertical,//horizontal：水平显示 vertical：垂直显示
//           children: [
//             Expanded(
//                flex: 1,
//                child:IconContaioner1(Icons.home, 100,100, color: Colors.blue)//注意在Expanded设置宽度无效他只能根据 flex: XX,设置的值来处理
//             ),  
//             Expanded(
//                flex: 2,
//                child:IconContaioner1(Icons.home,100,100,color: Colors.red)
//             ),          
//           ],
//         );
//    }
// }

// class IconContaioner1 extends StatelessWidget {
// Color color;
// double width;
// double height;
// IconData icon;

// //通过构造函数传递颜色和图标
//  IconContaioner1(this.icon, this.width ,this.height,{Key? key,required this.color}):super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: this.color,
//         width: this.width,
//         height: this.height,
//         alignment: Alignment.center,//如果下面使用Center组件的话这里就可以屏蔽
//         child: Icon(this.icon,color: Colors.white,size:28),
//       );
//    }
// }

