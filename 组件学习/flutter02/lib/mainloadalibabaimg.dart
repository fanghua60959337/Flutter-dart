

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
import 'package:flutter/material.dart';
import './myFont.dart';
//加载flutter系统内置的图标
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
    // throw UnimplementedError();
    //加载系统自带的内置图标 地址 https://material.io/tools/icons/
    //阿里巴巴的图标库 https://www.iconfont.cn/collections/detail?spm=a313x.7781069.1998910419.d9df05512&cid=44467
    //系统内置的图标通过Icon来加载
    //使用自定义或者阿里巴巴图标自定义自定图标的方法： 第一步下载阿里巴巴的图标对应图标文件 假设我们的字体图标文件保存在项目跟目录下 路径为 'founts/iconfont,fft
    //第二部在pubspec.yaml文件中 打开fonts 步骤引入下载的阿里巴巴图标库地址文件
    //第三部定义一个自定义的 XXX类 功能能Icons类一样；将字体文件中的所有图标定义成静态变量
    return Column(//如果想上下滑动可以将Column改成 ListView
      children:[
        SizedBox(height: 20),
        Icon(Icons.home,size:40,color: Colors.red),
        Icon(Icons.settings,size:40,color: Colors.red),
        Icon(Icons.search,size:40,color: Colors.yellow),
        Icon(Icons.person,size:40,color: Colors.yellow),
        SizedBox(height: 20),
        Icon(myFont.lanya,size:40,color: Colors.yellow),
        Icon(myFont.weixin,size:40,color: Colors.yellow),
        Icon(myFont.gouwuche,size:40,color: Colors.blue),
        SizedBox(height: 20),
        Icon(myFont.lanya,size:40,color: Colors.yellow),
        Icon(myFont.weixin,size:40,color: Colors.yellow),
        Icon(myFont.gouwuche,size:40,color: Colors.blue),
        SizedBox(height: 20),
        Icon(myFont.lanya,size:40,color: Colors.yellow),
        Icon(myFont.weixin,size:40,color: Colors.yellow),
        Icon(myFont.gouwuche,size:40,color: Colors.blue),
        SizedBox(height: 20),
        Icon(myFont.lanya,size:40,color: Colors.yellow),
        Icon(myFont.weixin,size:40,color: Colors.yellow),
        Icon(myFont.gouwuche,size:40,color: Colors.blue),
        SizedBox(height: 20),
        Icon(myFont.book,size:40,color: Colors.yellow),
        Icon(myFont.zhifubaozhifu,size:40,color: Colors.yellow),
        Icon(myFont.gouwuche,size:40,color: Colors.blue),
      ],
    );
  }
}
