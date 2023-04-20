import 'package:flutter/material.dart';
import './res/listData.dart';
// GridView使用
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
        body:Myapp1(),
        // body:Myapp(),
      ),
      theme:ThemeData(
        primarySwatch: Colors.yellow,
      ) ,
    ));
  }
}

// class Myapp1 extends StatelessWidget {
//   const Myapp({Key? key}):super(key: key);

// Widget _initGriViewData(context,indext){
//   return Container(
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: Colors.black26,
//             )
//           ),
//           child: Column(
//             children: [
//               Image.network("${listData[indext]['imageUrl']}"),
//               const SizedBox(height: 10),
//               Text('${listData[indext]['title']}', style: TextStyle(fontSize: 18)),
//             ],
      
//           ),

//         );
// }

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: listData.length,
//         padding:const EdgeInsets.all(10),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisSpacing:10,//水平间距
//           mainAxisSpacing:10,//垂直间距
//           crossAxisCount:2,//一行显示多少个元素
//           childAspectRatio: 1,//宽高比列
//         ),
//         itemBuilder: (context,indext){
//           return Container(
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: Colors.black26,
//               )
//             ),
//             child: Column(
//               children: [
//                 Image.network("${listData[indext]['imageUrl']}"),
//                 const SizedBox(height: 10),
//                 Text('${listData[indext]['title']}', style: TextStyle(fontSize: 18)),
//               ],
        
//             ),

//           );
//         }

//      );
//   }
// }

//=========================使用GridView.builder形式获取数据创建GridView 同时通过设置SliverGridDelegateWithFixedCrossAxisCount============================================
class Myapp extends StatelessWidget {
  const Myapp({Key? key}):super(key: key);

Widget _initGriViewData(context,indext){
  return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black26,
            )
          ),
          child: Column(
            children: [
              Image.network("${listData[indext]['imageUrl']}"),
              const SizedBox(height: 10),
              Text('${listData[indext]['title']}', style: TextStyle(fontSize: 18)),
            ],
      
          ),

        );
}

  @override
  Widget build(BuildContext context) {
    return GridView.builder(//使用GridView.builder形式创建GridView 同时通过设置SliverGridDelegateWithFixedCrossAxisCount和crossAxisCount是配套使用
      itemCount: listData.length,//注意这里必须传递
        padding:const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing:10,//水平间距
          mainAxisSpacing:10,//垂直间距
          crossAxisCount:2,//一行显示多少个元素
          childAspectRatio: 1,//宽高比列
        ),
        itemBuilder: _initGriViewData);
  }
}

//==============================使用GridView.builder形式获取数据创建GridView 同时通过设置SliverGridDelegateWithFixedCrossAxisCount============================================
class Myapp1 extends StatelessWidget {
  const Myapp1({Key? key}):super(key: key);

Widget _initGriViewData(context,indext){
  return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black26,
            )
          ),
          child: Column(
            children: [
              Image.network("${listData[indext]['imageUrl']}"),
              const SizedBox(height: 10),
              Text('${listData[indext]['title']}', style: TextStyle(fontSize: 18)),
            ],
      
          ),

        );
}

  @override
  Widget build(BuildContext context) {
    return GridView.builder(//使用GridView.builder形式创建GridView 同时通过设置SliverGridDelegateWithMaxCrossAxisExtent
      itemCount: listData.length,
        padding:const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(//SliverGridDelegateWithMaxCrossAxisExtent和maxCrossAxisExtent是配套使用
          crossAxisSpacing:10,//水平间距
          mainAxisSpacing:10,//垂直间距
          maxCrossAxisExtent:500,//
          childAspectRatio: 1,//宽高比列
        ),
        itemBuilder: _initGriViewData);
  }
}
