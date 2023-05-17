import 'package:flutter/material.dart';

//UserAccountsDrawerHeader固定样式侧边导航
class MinePage extends StatefulWidget {
  const MinePage({super.key});

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('个人中心')),
         //添加左侧抽屉
         drawer: Drawer(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: UserAccountsDrawerHeader(
                        //UserAccountsDrawerHeader是配置固定样式的侧边栏目
                        accountName: Text('名称'),
                        accountEmail: Text('itying@qq.com'),
                        currentAccountPicture: CircleAvatar(
                          //配置头像
                          backgroundImage: NetworkImage(
                              'https://k.sinaimg.cn/n/default/transform/590/w240h350/20230509/26fa-30fb4a059ca78ee261d630bfff95922d.jpg/w240h350z1l50t1q70b9d.jpg'),
                        ),
                        otherAccountsPictures: [
                          Image.network(
                              'https://k.sinaimg.cn/n/default/transform/175/w105h70/20230509/1bec-c6e8c3cc7b01f87b661ac68091ef54dd.jpg/w105h70z1l50t1q60217.jpg'),
                          Image.network(
                              'https://k.sinaimg.cn/n/ent/transform/590/w240h350/20230513/9d05-89d6ddcadfe834a0b01f3f4c5dfdcff0.jpg/w240h350z1l50t1q70510.jpg'),
                          Image.network(
                              'https://k.sinaimg.cn/n/default/transform/175/w105h70/20230509/3c02-277213642c4ce777e6d335a2a0d58f00.jpg/w105h70z1l50t1q601a6.jpg'),
                        ],
                        //配置背景图片
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://www.itying.com/images/flutter/1.png'))),
                      ))
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
    );
  }
}
