import 'package:flutter/material.dart';
import 'package:flutter02/mainGridView-1.1.dart';
import './res/listData.dart';

// void main() {
//   runApp(MaterialApp(
//     home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
//       appBar: AppBar(title: Text('你好flutter')),
//       body:Myapp(),
//     ),
//     theme:ThemeData(
//       primarySwatch: Colors.yellow,
//     ) ,
//   ));
// }

// class Myapp extends StatelessWidget {
//   const Myapp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Flutter app"),
//       ),
//       body: Center(
//           child: Column(
//         children: [Text('12'), SizedBox(height: 100)],
//       )),
//     );
//   }
// }

void main() {
  runApp(MaterialApp(
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

class Myapp extends StatelessWidget {
  int countNumber = 0;
  Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$countNumber',style: Theme.of(context).textTheme.bodySmall),
          SizedBox(height: 100),
          ElevatedButton(onPressed: () {
            //注意setState方法在StatelessWidget中不能使用需要在StatefulWidget中才能使用
            // setState((){
            //   countNumber++;
            // })
            //  countNumber++;
          }, child: Text('增加'))
        ],
      )),
    );
  }
}
