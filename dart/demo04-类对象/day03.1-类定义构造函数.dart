//
import 'dart:io';
import '../demo05-抽象类/day04.2-类.dart';
import '../demo05-抽象类/day04.1-类.dart';
import 'lib/Animal.dart';
import 'lib/Boy.dart';
import 'lib/Rect.dart';
import 'day03.2-静态属性和静态方法.dart';

//类的定义 class开头 然后是类名称 首字母大写
class Person {
  //添加属性或者函数方法
  String name = '张三';
  int age = 2;

//一默认构构造函数：默认构造函数他会在创建对象的时候自动调用
//默认构造函数：他是类名开头只能有一个默认构造函数
  // Person() {
  //   print('我是Person类里默认的构造函数创建这个类的实例是会自动调用' + '${this.name}------${this.age}');
  // }

//二：自定义默认构造函数
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  //   print('我是Person类里默认的构造函数创建这个类的实例是会自动调用' + '${this.name}------${this.age}');
  // }

//上面的自定义默认构造函数的简可以写成下面样式
  Person(this.name, this.age);

//三：命名构造函数函数 他可以写多个
  //自定义命名构造函数：Person.XXX(参数1,参数2,参数,)
  // Person.initInfo(int age, String name) {
  //   print('我是命名构造函数' + '${this.name}----${this.age}');
  // }
// 命名构造函数函数1
  Person.initInfo(String name, int age) {
    this.age = age;
    this.name = name;
    print('我是命名构造函数');
  }

// 命名构造函数函数2
  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }

//四：类的函数有返回值的函数
  String getage() {
    return '${this.age}';
  }

  String changege(int ageNumber, String name) {
    this.age = ageNumber;
    this.name = name;
    return '${this.age} ---${this.name}';
  }

//无返回值的函数
  setinfo(int age) {
    this.age = age;
  }

  void getinfo() {
    print('${this.age}---${this.name}');
  }

//五 函数的可选参数
  void method1(String name, [int age = 1, int? h]) {
    print('name is $name, age is $age, h is $h');
  }

  void method2(String name, {int? age, String? add}) {
    print('name is $name, age is $age, h is $add');
  }
}

class Student {
  String name = '';
  int age = 0;

  //命名构造函数：类名.方法名称()
  Student.now(String name, int age) {
    print('我是命名构造函数:' + name);
  }

  void printinfor() {
    print('我是自定义的构造函数' + '${this.name}----${this.age}');
  }
}

void main() {
  //1.1使用默认构造函数创建对象
  // var person1 = new Person(); //创建实例变量 也可以指定类型创建   Person person1 = new Person();
  // person1.setinfo(30);
  // person1.getinfo();

  //使自定义默认构造函数创建对象
  var person2 = new Person('章三', 108); //创建实例变量 也可以指定类型创建   Person person1 = new Person();
  person2.getinfo();

  //1.2使用命名构造函数创建对象
  Person person3 = Person.initInfo('张李四', 44);
  person3.getinfo();
  Person p4 = new Person.setInfo('李四', 30);
  p4.getinfo();

//创建命名构造函数实例变量
  var student2 = Student.now('王五', 80);
  print(student2.age);

  Animal cat = new Animal('小猫', 23);
  //print(cat.name);//添加了下滑线就是私有的不能在访问
  cat.publicinfo();
  // print(cat.getname());

  Boy boy = new Boy('李小现', 23);
  print(boy.name); //添加了下滑线就是私有的不能在访问

  Rect react = Rect(12.3, 15);
  print(react.area()); //通过调用普通函数获取面积额
  print(react.receivearea); //通过调用get方法直接点余法调用形式获取面积

  react.aresheight = 40; //调用set方法直接点余法
  print(react.receivearea); //调用get方法直接点余法

  Cat.name = '汤姆猫';
  Cat.show();
}
