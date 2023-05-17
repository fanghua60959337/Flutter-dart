import 'package:flutter/material.dart';

class UinfoPage extends StatefulWidget {
  final String title;
  final String fromepage;
  const UinfoPage({super.key,required this.fromepage,this.title = '个人信息'});

  @override
  State<UinfoPage> createState() => _UinfoPageState();
}

class _UinfoPageState extends State<UinfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('个人信息')),
      body: Center(
        child:Column(
          children: [
            Text('${widget.fromepage}传过来的title值：${widget.title}'),
            //第一种MaterialPageRoute基本路由方式跳转
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('返回')),

            // ElevatedButton(onPressed: () {
            //   Navigator.of(context).push(
            //       MaterialPageRoute(builder: (BuildContext context) {
            //         return const UinfoPage(fromepage:'首页',title:'用户信息');
            //       })
            //   );
            // }, child: Text('用户信息')),
          ],
        ),
      ),
    );
  }
}
