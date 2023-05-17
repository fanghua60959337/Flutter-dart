import 'package:flutter/material.dart';
import 'package:fultter_tab/commom/routes.dart';
import './pages/tab.dart';
import '../pages/Mine/pwd.dart';
import '../commom/routes.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   Map routes =  {
//     '/': (context) => const Tabs(),
//     '/pwd': (context, {arguments}) => PwdPage(arguments: arguments),
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return(MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
// //命名路由使用
//       initialRoute: '/',
//       onGenerateRoute: (RouteSettings settings) {
//         print(settings);
//         print(settings.name);
//         print(settings.arguments);
//
//         final String? name = settings.name;
//         final Function pageContentBuilder = routes[name];
//
//         if (pageContentBuilder != null) {
//           if (settings.arguments != null) {
//             final Route route = MaterialPageRoute(
//                 builder: (context) =>
//                     pageContentBuilder(context, arguments: settings.arguments));
//             return route;
//           }
//         } else {
//           final Route route = MaterialPageRoute(
//               builder: (context) => pageContentBuilder(context));
//           return route;
//         }
//       },
//       // routes: {
//       //   '/': (context) => const Tabs(),
//       //   // '/set': (context) => const SetPage(),
//       //   '/pwd': (context, {arguments}) => PwdPage(arguments: arguments),
//       // },
//     ));
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
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
