// mixins的中文意思是混入，就是在类中混入其他功能。
// 在Dart中可以使用mixins实现类似多继承的功能
// 因为mixins使用的条件，随着Dart版本一直在变，这里讲的是Dart2．x中使用mixins的条件：
// 1、作为mixins的类只能继承自Object，不能继承其他类
// 2、作为mixins的类不能有构造函数
// 3、一个类可以mixins多个mixins类
// 4、mixins绝不是继承，也不是接口，而是一种全新的特性
class Perosn with Animal ,Banimal{
  printInfo(){
    print('这是person类');
  }
}

class Animal {
  String info = 'this is a';
  var name;
  //这里是构造函数如果Animal作为mixins的类的话就需要屏蔽下面这行代码
  // Animal.setInfo(String name) {
  //   this.name = name;
  // }

  void printA() {
    print("A");
  }
}

class Banimal {
  var age;
  void printB() {
    print("B");
  }
}

class Canimal extends Perosn {
  //注意这里的Animal和Banimal只能继承Objcet 不能继承其他的类 ，作为mixins的类不能有构造函数
}

void main() {
  Canimal c = Canimal();
  c.printInfo();
  c.printA();
  c.printB();
  c.age = 12;
  print(c.age);
  print(c.info);
}
