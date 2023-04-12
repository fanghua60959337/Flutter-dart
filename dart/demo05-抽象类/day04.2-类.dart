// 一个累通常由属性和方法组成
//抽象类
// Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口。
// 1、抽象类通过abstract 关键字来定义
// 2、Dart中的抽象方法不能用abstract声明，Dart中没有方法体的方法我们称为抽象方法。
// 3、如果子类继承抽象类必须得实现里面的抽象方法,如果抽象类里面有3个抽象方法,则子类也必须实现抽象类里面的3个方法.
// 4、如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法。
// 5、抽象类不能被实例化，只有继承它的子类可以

void main() {
  Preson preson = subPreson();
  preson.methd1();

  Preson1 preson1 = Preson1();
  preson1.setinfo('李四', 88);
  print('$preson1.name-------$preson1.age');
  //print('${preson1.name}-------${preson1.age}');
}

// Dart是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是Object的子类
//自定义类： class PXX {} 注意首要字母大写
abstract class Preson {
  methd1(); //抽象方法
  methd2(); //抽象方法
}

class subPreson extends Preson{
  methd1() {
    //抽象方法
    print("我实现抽象类方法1");
  }
  methd2() {
    //抽象方法
    print("我实现抽象类方2");
  }
}

abstract class SuperStudent {
  eat(); //抽象方法==>抽象方法是不需要实现的
  run(); //抽象方法
  printInfo() {
    print('我是一个抽象类里面的普通方法');
  }
}

class Preson1 {
  //属性
  String name = '章三';
  int age = 23;
  //给类定义函数
  void setinfo(String name, int age) {
    this.name = name;
    this.age = age;
  }
}
