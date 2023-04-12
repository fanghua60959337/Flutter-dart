/*
Null safety空安全：
？可空类型
！类型段言
*/
//二：返回值为可空类型函数：直接在返回的类型中后后面添加？
//例子
// String getData(apiUrl) { //如果在String后面不添加？而后又return null; 则会报错
//   if (apiUrl != null) {
//     return apiUrl;
//   } else {
//     return null;
//   }
// }
String? getData(apiUrl) {
  //如果在String后面不添加？而后又return null; 则会报错
  if (apiUrl != null) {
    return apiUrl;
  } else {
    return null;
  }
}

void main() {
  // //一：变量为类型为可红类型
  // int? a = 123;
  // a = null; //报错 a 为非空类型 这个错误类可以声明为 int？a = 123;
  // print(a);

  // //String username = '张三';
  // String? username = '张三'; //？即就是做空安全的的处理
  // //username = null; //报错 username 为非空类型
  // print(username);

  // List<String>? li = ['张三', '李四', '王五', '赵六']; //？即就是做空安全的的处理
  // li = null;
  // print(li);

  // print(getData('http://www.baidu.com'));

  //三：类型断言
  String? str = 'this is string';
  str = null;
  print(str!.length); //如果str不等于null会打印str的长度，如果为null则他会报异常 如果不为null这里就可以不用添加“！”
  //使用方法
  getlength('str');
  getlength(null);
}

void getlength(String? str) {
  //此处的str定义为可选类型
  try{
     print(str!.length); //次数在打印长度的时候必须添加！做类型断言 做为过滤条件过滤str是否为空是空着不打印长度 不添加会报错
  }catch(error){
     print('str is null');
  }
}
