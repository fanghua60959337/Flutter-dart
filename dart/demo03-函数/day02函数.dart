/*
自定义方法:
格式
返回类型  方法名称（参数1，参数2...）{
}
*/
//无返回类型方法
import 'dart:async';

void printinfo() {
  print('自定义方法');
}

//有返回值类型方法
int getNum() {
  var myNum = 123;
  return myNum;
}

String printuserinfo() {
  return 'str';
}

void main() {
  printinfo();
  print(getNum());
  print(printuserinfo());

//求数字范围内的和
  int sunNum(int n) {
    var sum = 0;
    for (var i = 1; i <= n; i++) {
      sum += i;
    }
    return sum;
  }

  var n = sunNum(60);
  print(n);

  //定义一个方法然后打印用户信息
  //固定参数的类型的函数
  String printuserinfowith(String username, int age) {
    return '姓名: $username----$age';
  }

  printuserinfowith('章三', 30);

//有序可选参数
  printSomething(int a, int b, [int c = 10, int d = 20]) {
    // 函数体
    return a + b + c;
  }

  print(printSomething(1, 2, 4));

// 定义可选参数的函数 注意可选参数放在末尾用 [参数1，参数2，参数3...]
  String printuserinfowithwithParam(String usnerName,
      {String sex = '', String hob = ''}) {
    if (sex.isEmpty) {
      return '姓名：$usnerName---性别:保密';
    }
    return '姓名：$usnerName---性别:$sex------爱好:$hob';
  }

  print(printuserinfowithwithParam(
    '章三',
    hob: '游泳',
    sex: '男',
  ));

  void printSomething2(int a, int b, {int c = 99, int d = 100}) {
    print(a + b + c + d);
  }

  printSomething2(2, 3, c: 10, d: 11);

  //实现一个 把方法当做参数的方法
  function1() {
    print('我是参数函数');
  }

  void fun(fn) {
    function1();
  }
  fun(function1);
}
