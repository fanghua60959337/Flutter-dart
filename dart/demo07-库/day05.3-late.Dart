//一：late 延迟初始化：
//使用场景一 在没有构造函数的前提下使用延迟初始化
class Person{//这个类是有构造函数的就不能使用延迟构造相当于在创建这个Person类的实力的时候可以使用这个构造函数进行了初始化
  String name;
  int age;
  Person(this.name, this.age);
  String getName(){
     return '${this.name}---${this.age}';
  }
}

class LaterPerson{//这个类没有构造函数，可以使用late延迟做延迟
  late String name;
  late int age;
  // 定义一个函数
  void setName(String name, int age){
    this.name = name;
    this.age = age;
  }
    String getName(){
     return '${this.name}---${this.age}';
  }
}

//二：late在抽象类中的使用
//定义抽象类
abstract class Db{
  // String uri;  //uri在没有构造函数直接使用会报错相当于没有初始化 所以只能使用late做懒加载才不会报错
  late String uri;  //uri在没有构造函数直接使用会报错相当于没有初始化 所以只能使用late做懒加载才不会报错
  add(String data);
  save();
  delete();
}

class Mysql implements Db{
@override
late String uri;

@override
  add(String data){
    print('data');   
  }
  save(){
     print('hello');
  }
  delete(){
    print('sre');
  }
}

void main() {
   Person p=new Person('张三',20);
   print(p.getName());

   LaterPerson laterp =new LaterPerson();
   laterp.setName('王武没够构造函数可以使用懒加载',20);
   print(laterp.getName());//注意如果前面LaterPerson类中没 name/age有添加Later就会报错
}