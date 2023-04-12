//Dart环境搭建：sdk安装
//官网访问https://dart.dev

//表示main方法没有返回值
// //一、常用的数据类型
void main() {
  /*1.1字符串类型：注意变量var的命命：他区大小写是不同的 例如 Age 和age 是两个不同的变量,他会自动推断类型*/
  var Age = 'this is var';
  print(Age);

  var age = 'this is var';
  print(age);
  if (age.isEmpty) {
    //判断字符串是否为空
    print('字符串为空');
  }

//格式化字符串：通过三个‘’‘ ’‘’可以形成格式化的字符串和换行
  var str1 = '''this is 
     我是格式化换行1

     我是格式化换行2
     
     我是格式化换行3
''';
  print(str1);

//类型判断
  if (str1 is String) {
    print('String型');
  } else if (str1 is int) {
    print('int类型');
  } else {
    print('其他类型');
  }

//1.3定义有类型的变量
//例如需要定义一个字符串类型
  String str2 = '你好dart';
  print(str2 + '我是String类型');

//1.4字符串的拼接
  String str3 = '字符串';
  String str4 = '拼接';
  print('$str3$str4'); //第一种中拼接方式：$拼接字符$拼接字符
  print(str3 + str4); //第二种种中拼接方式：拼接字符+拼接字符

//1.4.1字符串转int/数字转字符串
  var intstr = '121';
  var int1 = int.parse(intstr); //字符串转数字
  print(int1 is int);

  var intstr2 = '13.456';
  var int2 = double.parse(intstr2); //字符串转数字
  print(int2 is double);

  int number = 123;
  var numberstr = number.toString(); //数字转字符串
  print(numberstr is String);

  String pricestr = '';
  try {
    var parsenumber = double.parse(pricestr);
    print(parsenumber);
  } catch (err) {
    print('抛出错误');
  }

//1.4.2字符替换
  var replcestr = "我要，替换，的内容，张三";
  print(replcestr.replaceAll("张三", "李四"));
  var replces = replcestr.split(","); //字符串分割
  print(replces);

//字符串的截取
// 使用”${}”打印表达式的值，打印单个变量的值不用加“{}”。
  var hello = "hello";
  print("${hello}");

  var s2 = 100;
  print('$s2 * 10 = ${s2 * 10}'); // 输出：100 * 10 = 1000

// length打印字符串的长度。“isEmpty”判断字符串是否为空。
  var myNum;
  if (myNum == null) {
    print('空');
  } else {
    print('非空');
  }

  var myNum1 = '';
  if (myNum1.isEmpty) {
    print('myNum1 空');
  } else {
    print('myNum1非空');
  }

// “contains()是否包含某个字符串”。”substring(startIndex,endIndex)截取一段字符串”。“

// startsWith()”是否以某个字符串开头。“endsWith()是否以某个字符串结尾”。

// “indexOf()“某个字符串的下标。”lastIndexOf()”最后一次出现某个字符串的下标。”

// toLowerCase()“转为小写，”toUpperCase()“转为大写。

// “trim()”清除空格。”trimLeft()“清除前边的空格。”trimRight()“清除后边的空格。”

// split()“分割字符串。”replace(),replaceAll(‘old’,’new‘)“替换字符串。

/* 常量 第一种命名：contst 关键字 一开始就要赋值否则报错*/
  const pi = 3.1415926;
  print(pi);

/* 常量 第二种命名：final 关键字 注意final和const的区别：
 1、final 可修饰实例变量、const不可以修饰实例变量
 2、final 只可用来修饰变量， const 关键字即可修饰变量也可用来修饰 
 3、final 可以开始不赋值而且只能赋值一次，const 值不变一开始就要赋值
 4、final 不仅有const的编译时的常量特性，最重要的他是运行时常量，并且final是惰性初始化，即在运行时第一次使用才初始化
 5、final 修饰的数组可以修改里面的内容。const不行。
 */
  final pi2;
  pi2 = 3.1415926;
  print(pi2);

  //const data = new DateTime.now();//const不可以修饰实例变量 print(name);

  final data1 = new DateTime.now(); //const不可以修饰实例变量
  print(data1);
  /* const不可以修饰实例变量
 const list = ['1','2']; //const不可以修饰实例变量
 list.first='0';
  */
  //final可以修饰实例变量
  final list = ['1', '2']; //const不可以修饰实例变量
  list.first = '0';
  print(list);

//二：基本的数据类型
//1.1int 类型
  int n = 1;
  print(n);
  //2 double 类型：既可以是整形也可以是浮点型
  double n1 = 23.5;
  double n2 = 23;
  print(n1);
  var mynum = 'hello';
  if (mynum == null) {
    print('空');
  } else {
    print('非空');
  }

  print(n.isEven); //是否偶数
  print(n.isOdd); //是否奇数

//3.1 浮点型
//double 既可以是整型 也可是浮点型
  double price = 3.7;
  print(price);

//nuber类型
  num qty = 9.3;
  print(qty);
  print(qty.toString());
//类型转换
  print(qty.toString());
  print(4.9.toInt()); // 4，向下取整
  print(4.9.ceilToDouble()); // 5.0，向上取整转浮点数
  print(4.9.floorToDouble()); // 4.0，向下取整转浮点数
// 四舍五入
  double m1 = 3.1415926;
  print(m1.toStringAsFixed(2)); //保留两位小数

  int a = 13;
  int b = 5;

  // b ??= 23; //表示b为空的话把23赋值给b否则b为他原来的值
  print(b);
  print(a + b); //加
  print(a - b); //减
  print(a * b); //乘
  print(a / b); //除
  print(a % b); //其余
  print(a ~/ b); //取整
  // ++自增 --自减 如果写在数字前面先自增 或自减 在赋值  如果写在后面则先赋值在运算 只有在赋值运算中才有效
  var add = 7;
  var add1 = add++; //先赋值在加+1
  print(add1);

  var release = 7;
  var release1 = --release; //先-1在赋值
  print(release1);
}
