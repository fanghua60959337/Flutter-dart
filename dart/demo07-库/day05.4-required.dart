//一：required关键字使用 ：
//1:主要用于内置修饰符
//2:主要用于允许根据需要标记的任何命名参数（函数或类），使得他们不能为空，因而可选参数中必须有个require修饰
String prinuserinfo1(String userName, {required int age, required String sex}) { //age 和 sex是必传参数不能省略
  if (age != 0) {
    return '姓名:$userName-------性别：$sex --- 年龄：$age';
  } else {
     return '姓名:$userName-------性别：$sex --- 年龄保密';
  }
}

String prinuserinfo2(String userName, { int age = 10, required String sex}) {//age非必传
  if (age != 0) {
    return '姓名:$userName-------性别：$sex --- 年龄：$age';
  } else {
     return '姓名:$userName-------性别：$sex --- 年龄保密 ';
  }
}


// String prinuserinfo3(String userName, { int age, String sex}) {//age/sex必须要初始化赋予初始值，要没前面添加 required修复否则会报错
//   if (age != 0) {
//     return '姓名:$userName-------性别：$sex --- 年龄：$age';
//   } else {
//      return '姓名:$userName-------性别：$sex --- 年龄保密 ';
//   }
// }


void main() {
   print(prinuserinfo1('李四', age: 30, sex: '80'));//prinuserinfo1函数后面的参数required修饰是必传参数
   print(prinuserinfo2('张三',sex:'女生'));
   //print(prinuserinfo3('张三',sex:'女生'));
}
