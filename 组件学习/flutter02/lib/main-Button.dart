import 'package:flutter/material.dart';
import 'package:flutter02/mainGridView-1.1.dart';
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
      home: Scaffold(
        //Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
        appBar: AppBar(title: Text('你好flutter')),
        body: Myapp(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    ));
  }
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  print('我是普通按钮');
                },
                child: Text('普通按钮')),
            TextButton(
                onPressed: () {
                  print('我是文本按钮');
                },
                child: Text('我是文本按钮')),
            OutlinedButton(
              onPressed: () {
                print('我是边框按钮');
              },
              child: Text('边框按钮'),
            ),
            IconButton(
                onPressed: () {
                  print('我是图标按钮');
                },
                icon: Icon(Icons.thumb_up))
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: Text('带图标按钮'),
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.info),
                label: const Text('带文图按钮')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: const Text('边框按钮')),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor:
                    MaterialStateProperty.all(Colors.white), //字体颜色修改
              ),
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: Text('带图标按钮'),
            ),
            Container(
              width: 150,
              height: 80,
              child: TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor:
                        MaterialStateProperty.all(Colors.white), //字体颜色修改
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.info),
                  label: const Text('自定义高度按钮')),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              //自动适应
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(20), //注意这里不能使用padding否者不显示
                height: 40,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue), //背景颜色修改
                      foregroundColor:
                          MaterialStateProperty.all(Colors.white), //字体颜色修改
                    ),
                    child: const Text('横屏铺满')),
              ),
            ),
            Expanded(
              //自动适应
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(20), //注意这里不能使用padding否者不显示
                height: 40,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue), //背景颜色修改
                      foregroundColor:
                          MaterialStateProperty.all(Colors.white), //字体颜色修改
                    ),
                    child: const Text('登录')),
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        ///圆角按钮
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue), //背景颜色修改
                    foregroundColor:
                        MaterialStateProperty.all(Colors.white), //字体颜色修改
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                child: const Text('圆角'))
          ],
        ),

        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ///圆形按钮
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue), //背景颜色修改
                    foregroundColor:
                        MaterialStateProperty.all(Colors.white), //字体颜色修改
                    shape: MaterialStateProperty.all(
                        CircleBorder(side: BorderSide(color: Colors.red)))),
                child: const Text('圆形按钮')),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue), //背景颜色修改
                      foregroundColor:
                          MaterialStateProperty.all(Colors.white), //字体颜色修改
                      shape: MaterialStateProperty.all(CircleBorder(
                          side: BorderSide(width: 10, color: Colors.red)))),
                  child: const Text('圆形按钮')),
            )
          ],
        ),
        const SizedBox(height: 20),
//修改按钮边框
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(width: 1, color: Colors.red))),
                child: const Text('圆形按钮'))
          ],
        )
      ],
    );
  }
}
