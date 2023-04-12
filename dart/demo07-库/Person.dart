class Person {
  String name;
  int age;
  Person({required this.name, required this.age});//此处添加required表示在创建Person实例的时候必须传递的参数 如果想其中的参数不用传递的话子在下面Student类中的通过添加？来实现
  String getName() {
    return '${this.name}---${this.age}';
  }
}

class Student {
  String? name;
  int? age;
  Student({this.name,this.age});
  String getName() {
    return '${this.name}---${this.age}';
  }
}

void main() {
  Person person = Person(name: '张三', age: 20);
  print(person.getName());

  Student student = Student(name: '张三');//次数的可选参数
  print(  student.getName());
}


