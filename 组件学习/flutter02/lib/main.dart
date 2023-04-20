import 'package:flutter/material.dart';
import './res/listData.dart';
//Column/Row -  Row和column都继承自flex使用 使用的时候用 Expend来设置比例
void main() {
   runApp(Mainapp());
}

class Mainapp extends StatelessWidget {
  const Mainapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
        appBar: AppBar(title: Text('你好flutter')),
        body:Myapp(), 
      ),
      theme:ThemeData(
        primarySwatch: Colors.yellow,
      ) ,
    ));
  }
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView( 
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
            ),
           Row(
            children: [
                Expanded(
                  flex: 2,
                  child:SizedBox(
                    height: 100,
                    child:Image.network('https://www.itying.com/images/flutter/1.png') ,
                  )
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                  height: 100,
                  child: Column(
                  children: [
                    Expanded(child:  Image.network('https://www.itying.com/images/flutter/1.png'),flex: 1),
                    Expanded(child:  Image.network('https://www.itying.com/images/flutter/1.png'),flex: 1),
                  ],
                ))
                 ),
              ],
            )
          ],
     );
   }
}

class IconContaioner1 extends StatelessWidget {
Color color;
double width;
double height;
IconData icon;

//通过构造函数传递颜色和图标
 IconContaioner1(this.icon, this.width ,this.height,{Key? key,required this.color}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: this.color,
        width: this.width,
        height: this.height,
        alignment: Alignment.center,//如果下面使用Center组件的话这里就可以屏蔽
        child: Icon(this.icon,color: Colors.white,size:28),
      );
   }
}

