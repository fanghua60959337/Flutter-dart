import 'package:flutter/material.dart';
import './res/listData.dart';
// 使用list.builder 构造函数自动遍历数据实现动态列表

void main() {
  // StatelessWidget 无状态组件，状态不可变的自定义 widget
  runApp(MaterialApp(
    home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
      appBar: AppBar(title: Text('你好flutter')),
      body:Myapp(),
    ),
    theme:ThemeData(
      primarySwatch: Colors.yellow,
    ) ,
  ));
}

class Myapp extends StatelessWidget {
   Myapp({Key? key}) : super(key: key);

  @override
  // Widget build(BuildContext context) {
  //   return ListView.builder(
  //     itemCount: listData.length,
  //     itemBuilder: (context,i){
  //       return ListTile(
  //         leading: Image.network("${listData[i]['imageUrl']}"),
  //         title: Text('${listData[i]['title']}'),
  //         subtitle: Text('${listData[i]['author']}'),
  //       );
  //     },
  //   );
  // }

 Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context,i){
        return ListTile(
          leading: Image.network("${listData[i]['imageUrl']}"),
          title: Text('${listData[i]['title']}'),
          subtitle: Text('${listData[i]['author']}'),
        );
      },
    );
  }


 centerContainer() {
    return ListView.builder(
        // itemCount: logic.items.length,
        itemCount: 10,
        padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 0),
        itemBuilder: (context, index) {
          return _listItem();
        });
  }

  _listItem() {
    return Card(
      child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: const BorderRadius.all(Radius.circular(9)),
          ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text('订单编号:${item.orderNo!}',style: const TextStyle(color:Colors.white,fontSize:16,fontWeight: FontWeight.bold),),
                  // Text('订单状态:待发货',style: TextStyle(color: MyColorUtil.ADColor("#72B447"),fontSize:16,fontWeight: FontWeight.bold)),
                  Text('订单编号:11100111',style: const TextStyle(color:Colors.white,fontSize:16,fontWeight: FontWeight.bold),),
                  Text('订单状态:待发货',style: TextStyle(color: Colors.yellow,fontSize:16,fontWeight: FontWeight.bold)),
                ],
              ),

              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     // Text('${item.name}',style: const TextStyle(color:Colors.white,fontSize:14)),
                     // Text('x${item.stock}',style: const TextStyle(color:Colors.white,fontSize:14)),
                    Text('大包',style: const TextStyle(color:Colors.white,fontSize:14)),
                    Text('x10}',style: const TextStyle(color:Colors.white,fontSize:14)),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  //Text('${item.stock}件商品,共计积分:${item.money}',style: const TextStyle(color:Colors.white,fontSize:16,fontWeight: FontWeight.bold),),
                  Text('10件商品,共计积分:1000',style: const TextStyle(color:Colors.white,fontSize:16,fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }






}
