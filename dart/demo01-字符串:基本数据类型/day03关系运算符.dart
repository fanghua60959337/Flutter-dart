//
void main() {
// 一:条件运算符  bool if else  switch  case

//一：bool类型
  bool flag1 = true;
  print(flag1);
  if (flag1) {
    print('真的');
  } else {
    print('假的');
  }

// 二条件运算符
  var sex = "男";
  switch (sex) {
    case "男":
      print("男");
      break;
    case "女":
      print("女");
      break;
    case "人妖":
      print("人妖");
      break;
    default:
      print("不存在");
  }

// 三木运算符
  var falg = true;
  print(falg ? '难' : '易');

//三：循环语句 for循环
//打印0——50内的所有偶数
  var sum = 0;
  for (int i = 0; i < 100; i++) {
    sum += i;
    print(sum);
  }

  List l1 = ['章5', '章4', '章3', '章2', '章1'];
  for (var i = 0; i < l1.length; i++) {
    print(l1[i]);
  }

  List l2 = [
    {'title': '新闻1'},
    {'title': '新闻2'},
    {'title': '新闻3'},
    {'title': '新闻4'},
    {'title': '新闻5'}
  ];
  for (var i = 0; i < l2.length; i++) {
    print(l2[i]['title']);
  }

  for (var element in l2) {
      print(element);
  }

  List list3 = [
    {
      'cate': '国内',
      'news': [
        {'title': '国内新闻'},
        {'title': '国内新闻'},
        {'title': '国内新闻'},
        {'title': '国内新闻'},
      ]
    },
    {
      'cate': '国际',
      'news': [
        {'title': '国际新闻'},
        {'title': '国际新闻'},
        {'title': '国际新闻'},
        {'title': '国际新闻'},
      ]
    },
    {
      'cate': '星球',
      'news': [
        {'title': '星球新闻'},
        {'title': '星球新闻'},
        {'title': '星球新闻'},
        {'title': '星球新闻'},
      ]
    },
    {
      'cate': '宇宙',
      'news': [
        {'title': '宇宙新闻'},
        {'title': '宇宙新闻'},
        {'title': '宇宙新闻'},
        {'title': '宇宙新闻'},
      ]
    },
  ];

  for (var i = 0; i < list3.length; i++) {
    print(list3[i]['cate']);
    for (var j = 0; j < list3[i]['news'].length; j++) {
      print(list3[i]['news'][j]['title']);
    }
  }


  

//二：while循环
  int i = 10;
  while (i < 10) {
    print(i);
    i++;
  }

//计算1～100的和
  int n = 1;
  var sum1 = 0;
  while (n <= 100) {
    sum1 += n;
    n++;
  }
  print(sum1);

//二：do while循环
  int n1 = 1;
  var sum2 = 0;
  do {
    sum2 += n1;
    n1++;
  } while (n1 <= 100);
  print(sum2);

//break 语句

/*break语句功能:
1、在switch语句中使流程跳出switch结构。
2、在循环语句中使流程跳出当前循环，遇到break循环终止，后面代码也不会执行
强调:
1、如果在循环中已经执行了break语句，就不会执行循环体中位于break后的语句。
2、在多层循环中,一个preak语句只能向外跳出一层
break可以用在switch case中也可以用在for循环和while循环中
continue语句的功能:
[注]只能在循环语句中使用，使本次循环结束，即跳过循环体重下面尚未执行的语句，接着进行下
continue可以用在for循环以及while循环中， 但是不建议用在while循环中，不小心容易死循环*/

// continue跳过当前循环例子
  for (var i = 1; i <= 10; i++) {
    if (i == 4) {
      //当i=4时跳过这循环就不会打印4
      continue;
    }
    print(i);
  }

//break语句只能向外跳出一层
  for (var i = 1; i <= 6; i++) {
    for (var j = 0; j < 6; j++) {
      if (j == 4) {
        //当i=4时跳出这循环就不会打印4
        break;
      }
      print('我要打印里层数据----' + j.toString());
    }
    print('我要打印的外层数据---' + i.toString());
  }
}
