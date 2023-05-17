import 'package:flutter/material.dart';
import 'package:fultter_tab/pages/Mine/Setting/setting.dart';
import 'package:fultter_tab/pages/Mine/pwd.dart';
import 'package:fultter_tab/pages/Mine/uinfo.dart';
import 'package:fultter_tab/pages/Mine/Setting/setting.dart';
import 'package:get/get.dart';
import '../search/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //注意debugShowCheckedModeBanner这个设置必须设置在MaterialApp包含中
      home: Scaffold(
        appBar: AppBar(title: Text('左侧边栏固定DrawerHeader导航')),
        //添加左侧抽屉
        drawer: Drawer(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: (DrawerHeader(
                    //DrawerHeader固定带头部样式导航
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://www.itying.com/images/flutter/1.png'),
                            fit: BoxFit.cover)),
                    child: Column(
                      children: [
                        /*/注意CircleAvatar这种设置圆形图片不能直接使用Image.network设置否则没有圆形效果 需要使用背景图片的模式来设置
                        ListTile(
                          leading: CircleAvatar(
                              child: Image.network(
                            'https://k.sinaimg.cn/n/default/transform/175/w105h70/20230509/1bec-c6e8c3cc7b01f87b661ac68091ef54dd.jpg/w105h70z1l50t1q60217.jpg',
                            fit: BoxFit.cover,
                          )),
                          title: Text('用户昵称'),
                        ),*/

                        ListTile(
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://k.sinaimg.cn/n/default/transform/175/w105h70/20230509/1bec-c6e8c3cc7b01f87b661ac68091ef54dd.jpg/w105h70z1l50t1q60217.jpg')),
                          title: Text('个人中心'),
                        ),
                        ListTile(
                          leading: Icon(Icons.people),
                          title: Text('个人中心'),
                        ),
                      ],
                    ),
                  )))
                ],
              ),
              SizedBox(height: 60),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('个人中心'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.password)),
                title: Text('设置密码'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.settings)),
                title: Text('系统设置'),
              )
            ],
          ),
        ),

//添加右侧抽屉
        endDrawer: Drawer(
          child: Column(
            children: [
              SizedBox(height: 60),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.people)),
                title: Text('个人中心'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.password)),
                title: Text('设置密码'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.settings)),
                title: Text('系统设置'),
              )
            ],
          ),
        ),

        body: Column(
          children: [
            //第一种MaterialPageRoute普通基本路由方式跳转
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SearchPage();
                  }));
                },
                child: Text('设置')),

            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const UinfoPage(fromepage: '首页', title: '用户信息');
                  }));
                },
                child: Text('用户信息')),

//命令路由的跳转
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pwd');
                  
                },
                child: Text('命令路由的跳转密码')),
//命令路由的传值班
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pwd',
                      arguments: {'title': '我是命名路由', 'aid': 20});
                },
                child: Text('命令路由的跳转用户信息')),

            //命令路由的传值班
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pwd',
                      arguments: {'title': '我是命名路由', 'aid': 20});
                },
                child: Text('命令路由的跳转用户信息')),

            //GetX使用
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pwd',
                      arguments: {'title': '我是命名路由', 'aid': 20});
                },
                child: Text('GetX defaultDialog')),

            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pwd',
                      arguments: {'title': '我是命名路由', 'aid': 20});
                },
                child: Text('GetX sanckbar')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pwd',
                      arguments: {'title': '我是命名路由', 'aid': 20});
                },
                child: Text('GetX bottomSheet切换主题')),

            //GetXsnabar使用

            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                      'snackbar标题', '欢迎使用snackbar',
                    colorText: Colors.red,//设置标题颜色
                    duration: Duration(milliseconds: 1000),//设置标题显示持续时间
                    //instantInit: true,//设置弹出为孩子
                    snackPosition: SnackPosition.TOP,//设置底部弹出
                    messageText: Text('我是自定义的组件内容，老奶奶想你了'),
                    icon:Icon(Icons.ac_unit),//弹出框左边的标题
                    shouldIconPulse: true,//设置icon是否有闪缩的效果
                    maxWidth: Get.width,//设置最大宽度
                   // margin: EdgeInsets.all(10),
                   // padding:  EdgeInsets.all(10)
                    borderRadius: 6,
                    backgroundColor: Colors.red,


                  );

                },
                child: Text('GetX snabar使用')),
          ],
        ),
      ),
    );
  }
}
