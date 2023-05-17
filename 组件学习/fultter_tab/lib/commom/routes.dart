
import 'package:flutter/material.dart';
import '../pages/tab.dart';
import '../pages/Mine/pwd.dart';
import '../pages/Mine/setting/setting.dart';


Map routes =  {
  '/': (context) => const Tabs(),
  '/pwd': (context, {arguments}) => PwdPage(arguments: arguments),
  '/set': (context, {arguments}) => SetPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }
  } else {
    final Route route =
    MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    return route;
  }
};