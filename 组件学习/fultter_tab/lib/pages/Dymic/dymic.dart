import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class DymicPage extends StatefulWidget {
  const DymicPage({super.key});

  @override
  State<DymicPage> createState() => _DymicPageState();
}

class _DymicPageState extends State<DymicPage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('GetX使用')),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog();
              },
              child: Text('显示 Dialog')),

          ElevatedButton(
              onPressed: () async {
                // 等用户选择返回结果，点击空白区域返回null
                var result = await showDialog(
                    barrierDismissible: true, //点击空白是否退出
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // titlePadding: EdgeInsets.all(10),
                        elevation: 10,
                        backgroundColor: Colors.pink, //背景颜色

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)), //设置形状

                        title: const Text('我是标题'),
                        // icon: Icon(Icons.work_rounded),
                        content: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('我可以是文本内容我可以是文本内容我可以是文本内容我可以是文本内容'),
                        ),
                        contentTextStyle:
                            const TextStyle(color: Colors.black), //文本内容的text样式
                        actions: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                },
                                child: const Text('确定')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Get.toNamed('/set');
                                },
                                child: const Text('取消')),
                          ),
                        ],
                      );
                    });

                print('result$result');
              },
              child: Text('AlertDialog')),

          //GetX使用
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: '提示信息',
                    middleText: '确定要删除吗?', //提示的内容
                    barrierDismissible: true, //点击空白区域是否退出
                    confirm: ElevatedButton(
                        onPressed: () {
                          //  Get.back();
                          Navigator.of(context).pop(true);
                        },
                        child: Text('确定')),
                    cancel: ElevatedButton(
                        onPressed: () {
                          // Get.back();
                          Navigator.of(context).pop(true);
                        },
                        child: const Text('取消')));
              },
              child: Text('GetX defaultDialog')),

          ElevatedButton(
              onPressed: () {
                Get.snackbar('提示', '您还没有登录',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red); //设置提示框背景颜色
              },
              child: Text('GetX sanckbar')),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Get.isDarkMode ? Colors.black26 : Colors.white,
                  height: 200,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.wb_sunny_outlined,
                            color:
                                Get.isDarkMode ? Colors.white : Colors.black87),
                        title: Text(
                          '白天模式',
                          style: TextStyle(
                              color: Get.isDarkMode
                                  ? Colors.white
                                  : Colors.black87),
                        ), //提示文字颜色设置
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                          Get.back();
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.wb_sunny,
                            color:
                                Get.isDarkMode ? Colors.white : Colors.black87),
                        title: Text(
                          '黑夜模式',
                          style: TextStyle(
                              color: Get.isDarkMode
                                  ? Colors.white
                                  : Colors.black87),
                        ), //提示文字颜色设置
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                          Get.back();
                        },
                      )
                    ],
                  ),
                ));
              },
              child: Text('GetX bottomSheet切换主题')),
        ],
      ),
    );
  }
}
