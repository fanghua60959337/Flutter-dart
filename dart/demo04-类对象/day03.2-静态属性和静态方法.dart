import 'dart:ffi';

class Cat {
  //一：
  //静态属性和静态方法可以用类直接访问
  //静态属性：在属性前面添加 static 修饰符号
  //静态方法：在方法前面添加 static 修饰符号
  //静态方法不能访问非静态成员 非静态方法可以访问静态成员
  static String name = 'tanmu';
  int age = 33;
  String username = 'tanmu';

  static void show() {
    print('我是静态方法中的汤姆猫$name');
    //print(this.age);//静态方法不能访问非静态属性
    //printinfo();//静态方法不能访问非静态方法
  }

  static void staticprintcatinfo() {
    print('我是静态方调用静态方法show中的汤姆猫$name');
    show(); //静态方法可以访问静态方法
  }

// 非静态属性和方法
//说明非静态方法可以访问静态和非静态成员属性 也可以访问静态方法

  void printinfo() {
    print(name); //非静态方法中访问静态属性
    print(this.age); //非静态方法中访问非静态属性
    show(); //非静态方法中访问静态方法
  }
}

class Person {
  String name;
  num age;
  Person(this.name, this.age); //这是默认构造方法
  void printinfo() {
    print(this.name + this.age.toString());
  }
}

main() {
  Cat.show();
  print(Cat.name);
  Cat.staticprintcatinfo();

  Cat cat = Cat();
  cat.printinfo();

//二：Dart对象操作符
// ？ 条件运算符
// as 类型转换符
// is 类型判断
// 极联操作

  // Cat cat1; 这里没有添加？会报错在应为这样使用的时候必须要确保创建了实例对象
  // cat?.printinfo();//添加？表示如果对象是空的就不会调用printinfo，如果不为中空才调用不添加这个❓会报错

// ？ 条件运算符
  Cat cat1 = Cat();
  cat1.printinfo();
  Cat.show();

  // ？ 条件运算符
  Person person = new Person('汤姆', 13);
  person.printinfo();
  //判断类型
  // if (person is Person) {
  //   print(person.name);
  // }

// as 类型转换符
  var p1;
  p1 = '';
  p1 = new Person('站三', 80);
  p1.printinfo();

  (p1 as Person).printinfo();
  p1.name = '李四';
  p1.age = 50;
  p1.printinfo();

//连缀操作 上面的操作可以简写成下面的形式
  p1
    ..name = '王五'
    ..age = 30
    ..printinfo();
}
