import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//tabBarView 使用
class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

//第一步混入：SingleTickerProviderStateMixin
class _CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabontroller;
  @override
  //生命周期函数：当组件初始化的时候就会触发
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabontroller = TabController(length: 8, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('头条滑动导航'),
        //左侧navi图标
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            print('左侧按钮');
          },
        ),
        backgroundColor: Colors.blue, //配置导航navi颜色
        //右侧按钮
        actions: [
          IconButton(
              onPressed: () {
                print('搜索');
              },
              icon: Icon(Icons.search)),
        ],
        //第二步设置bottom
        bottom: TabBar(
            isScrollable: true, //内容比较比较多时导航滚动
            indicatorColor: Colors.red, //设置指示线条的颜色
            indicatorWeight: 2, //设置指示器线条的高度,
            indicatorPadding: EdgeInsets.all(5), //设置指示器的间距
            // indicatorSize:TabBarIndicatorSize.label,//指示器大小计算方式，TabBarlndicatorSize.label跟文字等宽，TabBarlndicatorSize.tab跟每个tab等宽(默认)
            // indicator: BoxDecoration(color: Colors.yellow,borderRadius:BorderRadius.circular(10)),//选中title的样式这个打开时indicatorSize需要关闭
            unselectedLabelColor: Colors.white, //选中lable的颜色
            labelColor: Colors.black, //未选中lable的颜色
            labelStyle: TextStyle(fontSize: 15), //选中label的labelStyle的颜色
            unselectedLabelStyle: TextStyle(fontSize: 12), //未选中lable的labelStyle
            controller: _tabontroller,
            tabs: const [
              Tab(child: Text('热门')),
              Tab(child: Text('推荐')),
              Tab(child: Text('彩票')),
              Tab(child: Text('关注')),
              Tab(child: Text('新闻')),
              Tab(child: Text('体育')),
              Tab(child: Text('娱乐')),
              Tab(child: Text('生活')),
            ]),
      ),
      body: TabBarView(controller: _tabontroller, children: [
        ListView(
          children: [ListTile(title: Text('热门视屏'))],
        ),
        ListView(
          children: [ListTile(title: Text('推荐视屏'))],
        ),
        ListView(
          children: [ListTile(title: Text('彩票视屏'))],
        ),
        ListView(
          children: [ListTile(title: Text('关注视屏'))],
        ),
        ListView(
          children: [ListTile(title: Text('新闻视屏'))],
        ),
        ListView(
          children: [ListTile(title: Text('体育视屏'))],
        ),
        ListView(
          children: [ListTile(title: Text('娱乐视屏'))],
        ),
        ListView(
          children: [ListTile(title: Text('生活视屏'))],
        ),
      ]),
    );
  }
}
