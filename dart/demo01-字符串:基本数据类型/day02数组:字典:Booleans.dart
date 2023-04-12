void main() {
  // 一：list
  //1.1第一种定义list的方式
  var l1 = ['章三', 20, true];
  print(l1);

//   list定义方式 可以是单引号 也是可以双引号
  var list = [1, 2, 3, 4, 5, '6'];
  list.add('赵六'); //添加元素
  list.remove('赵六'); //删除元素
  print(list.last);
  print(list.length); //获取list长度

//也可通过通过这样创建
  List listarray = ['香蕉', '苹果', '橘子'];
  print('我是listarray的第一个数据' + listarray[0]);

  //1.2 list定义方式 指定里面元素的类型
  var list2 = <String>['张三', '李四', '王五'];
  list2.add('赵六'); //添加元素
  list2.remove('赵六'); //删除元素
  print(list2);

  var list3 = <int>[1, 2, 3];
  print(list3);

  //1.3 定义空list
  var list4 = [];
  list4.add('赵六'); //添加元素
  list4.remove('赵六'); //删除元素
  print(list4);

  //1.4 创建固定元素长度的List这种创建方式的长度是固定的不能修改
  var list5 = List.filled(
      2, ''); //创建两个元素的数组 如果需要指定元素的类型使用   var list5 = List<元素类型>.filled(2, '')
  print(list5);
  print(list5[0]);
  print(list5[1]);
  list5[0] = "张兰"; //修改集合的内容
  list5[1] = "酵母";
  print(list5);
  var list6 = List.filled(2, ''); //创建两个元素的数组
  print(list6.length);
  // list6.length = 0;//这里不能修改数组的长度

  //1.5 通过【】来创建List他的长度是可以改变的
  var list7 = []; //如果需要指定元素的类型使用   var list7 = <元素类型>[];
  print(list7);
  list7.length = 2;
  list7[0] = "张兰"; //修改集合的内容
  list7[1] = "酵母";
  print(list7);

//设置固定长度的默认数组元素
  var list71 = List.filled(2, 'nihao');
// 注意如果后面的默认元素设置默认值班则他的类型就固定了，修改的时候类型需要保持一致
// list71[0] = 1;//这里会报错类型不统一
  list71[0] = 'hello';
  print(list71);
/*//1.6 List 常用的属性:
常用属性:
length 长度
reversed 翻转
isEmpty 是否为空
isNotEmpty 是否不为空*/
  List groupList = ['老年人', '中年人', '青年人'];
  print(groupList.length); //长度
  print(groupList.isEmpty); //是否为空
  print(groupList.isNotEmpty); //是否不为空

  var reversedlist = groupList.reversed
      .toList(); //翻转 翻转后的得到的数据类型不是List类型需要调用toList()才转转化成List类型
  print(reversedlist); //其他类型转换成List

/*//1.7 List 常用的方法:
  常用方法:
  add 增加
  addAll 拼接数组
  indexOf 查找传入具体值
  remove 删除传入具体值
  removeAt 删除传入索引值
  fillRange 修改
  insert ( index，value) ; 指定位置插入
  insertAll (index ,list) 指定位置插入List
  toList() 其他类型转换成List
  join() List转换成字符串
  split() 字符串转化成List
  forEach 遍历
  where
  any 表示只要有符合条件的就返回真或者假
  every 表示没一个符合条件的就返回真或者假
  map
*/
  List group1 = ['八戒', '沙僧', '悟空'];
  group1.add('唐僧'); //增加一个元素
  print('取经组合' + group1.toString());

//增加一个List
  List group2 = ['佛祖', '观音', '弥勒佛'];
  group2.addAll(group1);
  print('增加后的数据' + group2.toString());

//指定位置插入数组
  List group22 = ['悟空', '八戒', '沙僧'];
  group22.insertAll(1, ['唐僧']);
  print('增加后的数据' + group22.toString());

  //数组转换成字符串
  List group4 = ['你好', '沙僧', '悟空', '白龙马'];
  var groupstr = group4.join(''); //
  print('转换成字符串后的数据：' + groupstr);
  print(groupstr is String);

//字符串转成List
  var groupstr1 = '赵-钱-孙-李';
  List grouplist = groupstr1.split('-');
  print(grouplist);

  //获取当前的元素的下标
  print('佛祖所在的下标:' + group2.indexOf('沙僧').toString());
//删除元素
  group2.remove('沙僧');
  print('删除group2后打印的数组元素：' + group2.toString());

  //元素的修改
  List group3 = ['八戒', '沙僧', '悟空', '白龙马'];
  group3.fillRange(1, 4, '佛祖'); //元素修改 1代表开始位置 4代表结束为止
  print(group3);

  var newList = [1, 2, 3, 4];
  var newList2 = newList.map((value) {
    return value * 2;
  });
  print(newList2);

  //指定位置插入元素
  group3.insert(0, '玉帝'); //0 插入一个元素代表起始位置从第0位开始
  group3.insert(1, ['玉帝', '王母娘娘']); //插入多个元素1:代表起始位置  后面中括号里面是插入的值
  print(group3);

//查找数组中间
  var boolcontain = group3.contains('玉帝');
  print(boolcontain);

//any使用
  var relult = group3.any((element) {
    return element == "八戒";
  });
  print(relult);

//every 使用
  var relult2 = group3.every((value) {
    return value == "八戒";
  });
  print(relult2);

//二：set集合 他里面不能有重复的数据
  var appleset = new Set();
  appleset.add('香蕉');
  appleset.add('橘子');
  appleset.add('苹果');
  appleset.add('香蕉');
  print(appleset);
//将set转化成List
  var listset = appleset.toList();
  print(listset);

//通过set取重list中的数据 通过新建一个Set在讲数组中的数据添加到set中，在将set转成数组
  List friute = ['香蕉1', '香蕉2', '香蕉3', '香蕉4', '香蕉5'];
  var friuteset = new Set();
  friuteset.addAll(friute);
  print(friuteset.toList()); //

  //遍历
  //第一种遍历方式
  for (var i = 0; i < friute.length; i++) {
    print(friute[i]);
  }

//第二种遍历方式
  for (var item in friute) {
    print(item);
  }

//第三种遍历方式
  friute.forEach((element) {
    print('遍历出来的水果' + '$element');
  });

  //第四种使用箭头函数 注意箭头函数里面只能有一行，可以省略大括号
  friute.forEach((value) => {print(value)});
  //省略大括号后的效果
  friute.forEach((value) => print(value));
  
  //第五种便利方式
  var newlist = friute.map((value) {
    return value;
  });
  print('第五种便利方式' + newlist.toString());

//练习1 修改下面的List数据，让数组种的大于2的值乘以1
  List datelist = [2, 4, 5, 8, 9, 14, 1];

//第一种种让满足条件的组成一个新的数组
  var newdatelist = datelist.map((value) {
    if (value > 2) {
      return value * 2;
    }
    return value;
  });
  print('大于2的值' + newdatelist.toString());

//第二种让满足条件的组成一个新的数组
  var newdatelist11 = datelist.where((value) {
    return value > 5;
  });
  print('大于2的值' + newdatelist11.toString());

//第三种满足条件的组成一个新的数组上面的结果可以改成一下的箭头函数
  var newdatelist1 = datelist.map((value) => value > 2 ? value * 2 : value);
  print(newdatelist1);

//练习2 定义一个方法 isEvenNumer来判断一个数是否是偶数
//练习3 定义一个方法 打印1-n以内的所有偶数
  bool isEvenNumber(int n) {
    if (n % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }

  printNumber(int n) {
    for (var i = 1; i <= n; i++) {
      if (isEvenNumber(i)) {
        print('打印的偶数' + i.toString());
      }
    }
  }

  printNumber(10);

//三：maps类型的数据类似字典
/*常用属性:
keys
获取所有的key值
values
#EXPFสิ์ ผ่jvalue(
is Empty
isNotEmpty
是否不为空
常用方法:
remove(key)
删除指定key的数据
addAll(f...-)
合并映射给映射内增加属性
containsValue
查看映射内的值返 回true/false
forEach
map
where
any
every
*/

// //1.1 第一种创建map类型的方法
  var person = {
    "name": "张兰",
    "age": "20",
    "work": "医生",
  };
  print(person["name"]);
  print(person["age"]);
  print(person["work"]);

//1.2 第二种创建map类型的方法
  var person1 = new Map();
  person1["name"] = "李四";
  person1["age"] = 22;
  person1["work"] = ["程序员", "外卖员"];
  print(person["name"]);
//获取所有key
  print(person1.keys.toList());
  print(person1.values.toList());
//给Map增加key 和value
  person1.addAll({'weight': 30, 'hight': 170, 'age': '36'});
  print(person1);

  //删除置指定的属性
  person1.remove("age");
  print(person1);

//判断是否包含某个value
  person1.containsValue('36');
  person1.containsKey('weight');
  //判断是否为空
  print(person1.isEmpty);

//1.3 第三种创建map类型的方法
  Map mapldata = {
    "name": "张兰",
    "age": "20",
    "work": "医生",
  };
  print(mapldata);
  mapldata.forEach((key, value) {
    print('$key--$value');
  });

//二：Booleans
  bool flag = false;
  var flage2;
  if (flage2 == null) {
    print("true");
  } else {
    print("flag");
  }

//三：匿名函数
  var prinNuber = (int a, int b) {
    print(a + b);
  };
  prinNuber(3, 5);

  Function getInfo = (String name, int age, [String sex = '男']) {
    print('My name is ${name}, my age is ${age}, my sex is ${sex}');
  };

  getInfo('postbird', 20);

//自调用函数
//第一种无参自执行函数
  (() {
    print('he;;p');
  })();

//有参自调用函数
//  ((形参数名称1,形参数名称2,形参数名称3) {
//     print('he;;p');
//   })(实参1,实参2,实参3);

  ((int n) {
    print('he;;p');
  })(12);

//三：函数递归
  var sum = 0;
  fn(int n) {
    sum += n;
    if (n == 0) {
      return;
    }
    fn(n - 1);
  }

  fn(100);
  print(sum); // 5050

//局部变量
  prinfinfo() {
    var num = 123;
    num++;
    print(num);
  }

  prinfinfo();

//闭包其实他的可以解决 a不定义成全局变量 而是定义成局部又可以常驻内存
  Function getA() {
    int a = 0;
    return () {
      a++;
      print(a);
    };
  }

  Function b = getA();
  b();
  b(); //这里调用会保存上次的值a 也即是常驻内存，他没有把上次的内存销毁保留了上次的值a ，如果上次是1 下一次就会++变成2 这样的就不用定义一个全局的a，这样的话相当于a是一个局部变量*/
}
