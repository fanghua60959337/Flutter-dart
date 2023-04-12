void main() {
  List list = ['苹果', '香蕉', '西瓜', '栗子'];
  list.forEach((element) => print(element));

  //箭头函数
  list.forEach((element) => {print(element)});

  List list2 = [1, 2, 3, 4];
  var resultlist = list2.map((e) {
    if (e > 2) {
      return e * 2;
    }
    return e;
  });

  //将上面的写成箭头行数
  var newList = list2.map((value) => value > 2 ? value * 2 : value);
  print(newList);

  bool isEventNumber(int n) {
    if (n % 2 == 0) {
      return true;
    }
    return false;
  }

  prinNum(int n) {
    for (var i = 1; i <= n; i++) {
      if (isEventNumber(i)) {
        print(i);
      }
    }
  }

  prinNum(10);
}
