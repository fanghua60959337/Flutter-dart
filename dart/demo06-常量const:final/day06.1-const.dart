/*final和const的区别：*/
class Person {
  //这个类是有构造函数的就不能使用延迟构造相当于在创建这个Person类的实力的时候可以使用这个构造函数进行了初始化
  String name;
  int age;
  Person(this.name, this.age);
  String getName() {
    return '${this.name}---${this.age}';
  }
}

void main() {
//区别一：
// const:声明的时候就需要确定常量的值切不允许在修改
// final:声明的常量允许声明后在赋值一次,赋值后不可以在改变，声明的变量事在运行时确定的

//1.1：const常量的定义
  // const var PI = 3.14;//const修饰后就不允许在修改
  // PI = 3.15926;

//1.2：final
//2.1final常量的定义声明的时候被赋值就会抛错不允许在修改
  // final pi1 = 3.1415926;
  // pi1 = 3.14; //声明的时候被赋值就会抛错不允许在修改

//2.2final常量的定义声明的时候未被赋值就不会抛错允许在修改一次
  final pi2;
  pi2 = 3.14;
  print(pi2);

//==============================================================
//区别二：
// ：dart:core 库中的identical函数的用法
//  作用：用来检查两个引用是否指向同一个对象 

//不添加const创建创建两个参数值一样的对象两个的结果不是同一个对象
  Person p1 = Person('张三', 20);
  Person p2 = Person('张三', 20);
  print(identical(p1, p2));//结果是两个不同同到的对象

//添加const 修饰的实例化常量对象 指向的地址是同一个
  var o1 = const Object();
  var o2 = const Object();
  print(identical(o1, o2));// 添加了const 后指向地址如果不添加就会指向不同的地址

//检测两个数组是否事通一个对象
  print(identical([2], [2]));// 不添加const修饰 指向不同的地址
  print(identical(const [2], const [2]));//添加const修饰 指向同一个地址
  print(identical(const [2], const [3]));//指向不同的地址

//   Person p4 = const Person('张三', 20);
//   Person p5 = const Person('张三', 20);
//   print(identical(p4, p5));
}
