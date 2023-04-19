

import 'package:flutter/material.dart';
import './myFont.dart';
//ListView
void main() {
  runApp(MaterialApp(
    home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
      appBar: AppBar(title: Text('你好flutter')),
      body: Myapp(),
    ),
    theme:ThemeData(
      primarySwatch: Colors.yellow,
    ) ,
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ListView(//如果想上下滑动可以将Column改成 ListView
      // padding:const EdgeInsets.all(10),
      padding:const EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: <Widget> [
        ListTile(
            leading: Icon(myFont.book,size:40,color: Colors.yellow),
            title: Text('国铁集团：保障重点物资运输 新华述评 研讨会举行'),
            subtitle: Text('7月30日，在“学习贯彻习近平经济思想暨全面塑造高质量发展新优势”研讨会上，从习近平经济思想的理论逻辑、实践逻辑和历史逻辑到天津全面塑造高质量发展，从明知山有虎、偏向虎山行的勇气魄力到再创新辉煌的底气信心．．．．．．3个小时的座谈中，观念在碰撞，思想在'),
            trailing:Icon(Icons.chevron_right),//向右的箭头
        ),
        Divider(),//分割线
        ListTile(
             leading:Image.network("https://www.itying.com/images/flutter/1.png"),
             title:const Text('国铁集团：保障重点物资运输 新华述评 研讨会举行'),
             subtitle:const Text('7月30日，在“学习贯彻习近平经济思想暨全面塑造高质量发展新优势”研讨会上，从习近平经济思想的理论逻辑、实践逻辑和历史逻辑到天津全面塑造高质量发展，从明知山有虎、偏向虎山行的勇气魄力到再创新辉煌的底气信心．．．．．．3个小时的座谈中，观念在碰撞，思想在'),
             trailing:Icon(Icons.chevron_right),//向右的箭头
        ),
        Divider(),//分割线
        ListTile(
          leading:Image.network("https://www.itying.com/images/flutter/1.png"),
          title:const Text('国铁集团：保障重点物资运输 新华述评 研讨会举行'),
          subtitle:const Text('7月30日，在“学习贯彻习近平经济思想暨全面塑造高质量发展新优势”研讨会上，从习近平经济思想的理论逻辑、实践逻辑和历史逻辑到天津全面塑造高质量发展，从明知山有虎、偏向虎山行的勇气魄力到再创新辉煌的底气信心．．．．．．3个小时的座谈中，观念在碰撞，思想在'),
          trailing:Icon(Icons.chevron_right),//向右的箭头
        ),
        Divider(),//分割线
        ListTile(
          leading:Image.network("https://www.itying.com/images/flutter/1.png"),
          title:const Text('国铁集团：保障重点物资运输 新华述评 研讨会举行'),
          subtitle:const Text('7月30日，在“学习贯彻习近平经济思想暨全面塑造高质量发展新优势”研讨会上，从习近平经济思想的理论逻辑、实践逻辑和历史逻辑到天津全面塑造高质量发展，从明知山有虎、偏向虎山行的勇气魄力到再创新辉煌的底气信心．．．．．．3个小时的座谈中，观念在碰撞，思想在'),
          // trailing:Image.network("https://www.itying.com/images/flutter/1.png"),//后面也可添加图片
          trailing:Icon(Icons.chevron_right),//向右的箭头
        ),
        Divider(),//分割线

      ],
    );
  }
}
