class Person {
  String name;
  int age;
  Person({required this.name, required this.age});//此处添加required表示在创建Person实例的时候必须传递的参数 如果想其中的参数不用传递的话子在下面Student类中的通过添加？来实现
  String getName() {
    return '${this.name}---${this.age}';
  }

  // static Person initInfo(String s, int i) {}
}

