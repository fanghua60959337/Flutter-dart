import 'package:flutter/material.dart';
import 'package:flutter02/mainGridView-1.1.dart';
import './res/listData.dart';

//Column/Row -  Row和column都继承自flex使用 使用的时候用 Expend来设置比例
void main() {
  // runApp(HomePage()); //这种是里面home未单独定义成Widget拆开来
  runApp(Mainapp()); //这种是里面home单独定义成Widget拆开来
}

/*///StatelessWidget不能改变 Text中countNumber的值
class Mainapp1 extends StatelessWidget {
   Mainapp1({Key? key}) : super(key: key);
  int countNumber = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        //Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
        appBar: AppBar(title: Text('你好flutter')),
        // body: Myapp(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${countNumber}',style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(height: 100),
              ElevatedButton(onPressed: () {
                // setState((){
                //     countNumber++;
                // print(countNumber);
                // })
              }, child: Text('add'))
            ],
          ),
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    ));
  }
}*/

/*///下面这个写法 返回中没有MaterialApp 运行会崩溃
class Mainapp extends StatelessWidget {
  Mainapp({Key? key}) : super(key: key);
  int countNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('你好flutter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${countNumber}',
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                //  setState((){
                //     countNumber++;
                // print(countNumber);
                // });
                },
                child: Text('add'))
          ],
        ),
      ),
    );
  }
}*/

//================未拆开========================
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _countNumber = 0;
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        //Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
        appBar: AppBar(title: Text('你好flutter')),
        // body: Myapp(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${_countNumber}',
                  style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _countNumber++;
                      print(_countNumber);
                    });
                  },
                  child: Text('add'))
            ],
          ),
        ),
      ),
    ));
  }
}

class Myapp extends StatelessWidget {
  @override
  int countNumber = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
      appBar: AppBar(title: Text('你好flutter')),
      // body: Myapp(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${countNumber}',
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 100),
            ElevatedButton(onPressed: () {}, child: Text('add'))
          ],
        ),
      ),
    );
  }
}
//========================================

class Mainapp extends StatelessWidget {
  Mainapp({Key? key}) : super(key: key);
  @override
  int countNumber = 0;
  Widget build(BuildContext context) {
    return (MaterialApp(
        title: 'flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: const MyHomePage()));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  int countNumber = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
      appBar: AppBar(title: Text('你好flutter')),
      // body: Myapp(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${countNumber}',
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 100),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    countNumber++;
                    print(countNumber);
                  });
                },
                child: Text('add'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            countNumber++;
            print(countNumber);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
