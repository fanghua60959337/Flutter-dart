//面向对象的三大特性、封装继 、承多态

//二：继承
//1、子类使用extends关键词来继承父类
//2、子类会继承父类的里面可见的属性和方法，但不会继承构造函数
//3、子类能重写父类的getter 和setter

//父类有默认值的继承
class Animal {
  String name = 'animal';
  num age = 20;
  //Animal(this.name, this.age); //这是默认构造方法
  void printinfo() {
    print(this.name + this.age.toString());
  }
}

class Dog extends Animal {}

//===============================
//父类没有默认值的继承
class Animalsuper {
  String name = '';
  num age = 0;
  Animalsuper(this.name, this.age); //这是默认构造函数

  Animalsuper.seinfo(String name, num age);//命名构造函数
  void printinfo() {
    print(this.name + this.age.toString());
  }
}

class Dogsub extends Animalsuper {
  //只要继承了这里必须实现否者会提示报错
  Dogsub(String name, num age) : super(name, age) {}
}

class Catsub extends Animalsuper {
  //注意子类中的默认构造函数和自定的构造函数不能同时存在
  String sex = '女';
  // Catsub(String name, num age, String sex) : super(name, age) {
  //   this.sex = sex;
  // }


  Catsub(String name, num age, String sex) : super.seinfo(name, age) {
    this.sex = sex;
    this.name = name;
    this.age = age;
  }
  run() {
    print("${this.name}-----${this.age}-----${this.sex}");
  }

  // void printinfo() {
  //     print("${this.name}-----${this.age}-----${this.sex}");
  // }
  //复写父类方法 可以添加   @override关键字 也可以不写
  @override
  void printinfo() {
    // TODO: implement printinfo
    super.printinfo(); //子类调用父类的方法
    super.printinfo();//子类调用父类的方法
    print("姓名：${this.name}-----年龄：${this.age}-----性别：${this.sex}");
  }
}

main() {
  Dog dog = Dog(); //这种是父类里的属性设置了默认值
  print(dog.name);

  Dogsub dogsub = Dogsub('王武', 90); //这种是父类里的属性设置了默认值
  print(dogsub.name);

  // Catsub cat = Catsub('赵六', 50, '男');
  // cat.run();
  Catsub cat = Catsub('钱七', 22, '女');
  cat.printinfo();
}
