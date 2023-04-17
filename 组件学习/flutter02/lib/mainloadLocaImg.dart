import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home:Scaffold(//Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
      appBar: AppBar(title: Text('你好flutter')),
      body:Column(
        children: const[
          Myapp(),
          SizedBox(height: 20),//占用一块高度做默认间隔使用
          Circular(),
          SizedBox(height: 20),//占用一块高度做默认间隔使用
          // ClipImg(),
          LocalClipOvalImage(),
          // LocalImage(),
        ],
      )
    ),
  ));
}


//图片地址：
// https://www.itying.com/images/201906/goods_img/1120_P_1560842352183.png
// https://www.itying.com/themes/itying/images/ionic4.png

//加载本地图片的方法：
//步骤一：需要创建一个存放图片的文件 images
//步骤二：在图片文件家里面创建一个2.0X 和 3.0X的文件
//步骤三在pubspec.yaml文件里面打开assets： 添加我们的图片文件目录

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:Container(
        margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
        height: 150,
        width: 150,
        decoration:const BoxDecoration(
          color: Colors.yellow
        ),
        child: Image.network('https://www.itying.com/themes/itying/images/ionic4.png',
          // scale: 2,
          // alignment:Alignment.centerLeft,
          // fit:BoxFit.fill,//图片的填充方式 fill ,默认效果：contain/ cove（常用）r/fill
          repeat: ImageRepeat.repeatY,//铺放方式
        ),
      )
    );
  }
}

//设置圆形图片的第一种方法
class Circular extends StatelessWidget {
  const Circular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height:150,
      //主要以圆形图片需要在decoration中配置而不是在他的外面的配置
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(75),//设置圆角
          color: Colors.lime,
          image: DecorationImage(image:NetworkImage('https://www.itying.com/themes/itying/images/ionic4.png'),fit: BoxFit.cover)
      ) ,
    );
  }
}

//设置圆形图片的第二种方法 使用ClipOval
class ClipImg extends StatelessWidget {
  const ClipImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext contex) {
    return ClipOval(
      child: Image.network('https://www.itying.com/themes/itying/images/ionic4.png',
          width: 150,
          height: 150,
          fit: BoxFit.cover
      )
    );
  }
}

//本地图片裁剪圆形
class LocalClipOvalImage extends StatelessWidget {
  const LocalClipOvalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image.asset('images/img.png',
            width: 150,
            height: 150,
            fit: BoxFit.cover
        )
    );
  }
}

//加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration:const BoxDecoration(
          color: Colors.yellow,
      ) ,
      child: Image.asset('images/img.png',fit: BoxFit.cover),
    );
  }
}


