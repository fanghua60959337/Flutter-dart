/*常量构造函数总结：
1、常量构造函数需以const关键字修饰
2、const 构造函数时 成员变量必须添加final修饰
3、如果实例化时不添加const修饰符，即使调用的时候常量构造函数实例化的对象也不是常量对象
4、如果实例化常量函数时，多个地方创建这个对象，如果传入的值相同，内存中只会会创建一个
*/
//普通构造函数类
class Contaioner {
  int width;
  int height;
  Contaioner({required this.width,required this.height});
  String getName() {
    return '${this.width}---${this.height}';
  }
}

//添加const构造的类成员变量需要添加final关键字
class Contaioner1 {
  final int width;
  final int height;
  const Contaioner1({required this.width,required this.height});
  String getName() {
    return '${this.width}---${this.height}';
  }
}

void main() {
  Contaioner c1 =  Contaioner(width:10,height:20);
  Contaioner c2 =  Contaioner(width:10,height:20);
  print(identical(c1, c2));//指向不同的地址因为他的成员变量没有添加const关键字修饰


  Contaioner1 c3 =  Contaioner1(width:10,height:20);
  Contaioner1 c4 =  Contaioner1(width:10,height:20);
  print(identical(c3, c4));//指向不同的地址因为对象创建的时候没有添加const关键字


  Contaioner1 c7 = const Contaioner1(width:110,height:20);
  Contaioner1 c8 = const Contaioner1(width:10,height:20);
  print(identical(c7, c8));//指向不同一个的地址应为他里面的值不一样

//注意这里如果要指向同一额地址的话必须满足；1成员变量是final修饰 2构造函数const修饰 3创建对象的的时候添加const修饰
  Contaioner1 c5 = const Contaioner1(width:10,height:20);
  Contaioner1 c6 = const Contaioner1(width:10,height:20);
  print(identical(c5, c6));//指向同一个的地址 
}
