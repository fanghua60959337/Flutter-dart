import 'package:flutter/material.dart';
import 'package:fultter_tab/commom/routes.dart';
import './pages/tab.dart';
import 'package:get/get.dart';
import '../pages/Mine/pwd.dart';
import '../commom/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
//命名路由使用
      home: Tabs(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    ));
  }
}
