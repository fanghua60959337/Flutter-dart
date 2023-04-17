import 'package:flutter/material.dart';

class myFont{

  static const IconData zhifubaozhifu = IconData(
      0xe634,//注意这里就是下载的字体json文件里面的unicode编码
      fontFamily:'myIcon',//注意这里就是pubspec.yaml自定义的字体名称
      matchTextDirection: true
  );

  static const IconData lanya = IconData(
      0xe619,//注意这里就是下载的字体json文件里面的unicode编码
      fontFamily:'myIcon',//注意这里就是pubspec.yaml自定义的字体名称
      matchTextDirection: true
  );

  static const IconData weixin = IconData(
      0xe607,//注意这里就是下载的字体json文件里面的unicode编码
      fontFamily:'myIcon',//注意这里就是pubspec.yaml自定义的字体名称
      matchTextDirection: true
  );

  static const IconData book = IconData(
      0xca8,//注意这里就是下载的字体json文件里面的unicode编码
      fontFamily:'flutterIcon',//注意这里就是pubspec.yaml自定义的字体名称
      matchTextDirection: true
  );

  static const IconData gouwuche = IconData(
      0xe63f,//注意这里就是下载的字体json文件里面的unicode编码
      fontFamily:'flutterIcon',//注意这里就是pubspec.yaml自定义的字体名称
      matchTextDirection: true
  );
}