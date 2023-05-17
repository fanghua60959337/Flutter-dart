import 'package:flutter/material.dart';


 class PwdPage extends StatefulWidget {
   Map arguments; //接受其他页面传过来的值 注意这个参数的名称是固定的
   PwdPage({super.key,required this.arguments,});

   @override
   State<PwdPage> createState() => _PwdPageState();
 }

 class _PwdPageState extends State<PwdPage> {
   @override

   void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
  }

   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('密码')),
     );
   }
 }
