import 'lib/Animal.dart'; //引用自定义的库
import 'dart:math'; //引入系统库

import 'dart:io'; //请求系统使用库
import 'dart:convert';
//import 'package:http/http.dart';

/*
yiDart中的库的使用：
1、通过使用improt引入，libaray指令可以创建一个库，每个Dart文件都是一个库，即使没有使用liaray指令来指定
2、Dart中的库主要有三种：
   1、我们自定义的额库，使用方法：import'lib/xxx.dart'
   2、系统内置的库，例如 使用方法：import 'dart:math'  ,import 'dart:io, import 'dart:convert'
   3、Pub包管理系统中的库，使用方法：
      3.1 https://pub.dev/packages
          https://pub.flutter-io.cn/packages
          https://pub.dartlang.org/flutter
      3.2 创建一个pubspec.yaml文件，内容如下
         name:xxx
         description:A new fluttrt module project.
         dependencies:
            http:^0.12+2
            date_format:^1.0.6
    4.运行dependencies
    5、运行put get 获取远程库
    6、查看文档引入库使用
*/


void main() async {
  //一般请求时才添加
//使用自定义的库
  Animal dog = Animal();
  dog.printifo();

  //使用系统库 丘两个数的最小值
  var minvalue = min(1, 3);
  print(minvalue);

  var requst = await getDataFromZhihuAPI();//await调用了使用异步的函数 _getDataFromZhihuAPI函数中需要添加async关键字
  print(requst);

  // var requst1 = dataFromZhihuAPI();//同步方法
  // print(requst1);
}

getDataFromZhihuAPI() async {//注意async 和 await是异步配套使用的：只有async方法才能使用await关键字调用，async是让函数变成异步，await是等待异步执行完成
  var httpCline = new HttpClient();
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  var request = await httpCline.getUrl(uri);
  var response = await request.close();
  return await response.transform(utf8.decoder).join();
}

// dataFromZhihuAPI(){//同步方法
//   var httpCline = new HttpClient();
//   var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
//   var request =  httpCline.getUrl(uri);
//   var response = request.close();
//   return  response.transform(utf8.decoder).join();
// }