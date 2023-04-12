//由于两个Person1 和Person2里面都有相同的类所有这里需要对一种一个引入的库做重命名处理来解决冲突
import 'lib/Person1.dart' as suibian; //引用自定义的库
import 'lib/Person2.dart'; //引用自定义的库
import 'lib/myMath.dart' show getInfo2; //引用自定义的库
import 'lib/lazyLoad.dart' deferred as lazyload; //引用自定义的库

void main() async {
  Person person = Person(name: '章三', age: 88);
  print(person.getName());
//使用重命名的库创建对象
  suibian.Person person1 = suibian.Person(name: '重命名章三', age: 88);
  print(person1.getName());
  getInfo2(); //由于上面引入的时候做了引入限制只能使用getInfo2方法

// 延迟加载
// 也称为懒加载，可以在需要的时候再进行加载。
// 懒加载的最大好处是可以减少APP的启动时间。
// 懒加载使用deferred as关键字来指定，如下例子所示：
// import 'package:deferred/hello.dart' deferred as hello;
// 当需要使用的时候，需要使用loadLibrary（）方法来加载：
// greet() async{
// await hello.loadLibrary();
// hello.printGreeting();
// }

  var result = await asyncSample();
}

asyncSample() async {
  return 'Dart async';
}
