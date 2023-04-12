int getNum(int n) {
  return n;
}

//匿名函数:
var printNum = (String parame1, String parame2) {
  print(parame1 + parame2);
};

void main() {
  print(getNum(12));
  printNum('hello', 'worl');

//自调用函数
  ((String hello, String worl) {
    print("我是立即执行方法 $hello + $worl");
  })('hello', 'worl');

//方法的递归
  var sum = 1;
  int fn(int n) {
    sum *= n;
    if (n == 1) {
      fn(n - 1);
    }
    return sum;
  }

  print(fn(100));

  var sum2 = 0;
  int fn2(int n) {
    sum2 += n;
    if (n == 1) {
       fn2(n - 1);
    }
    return sum2;
  }

  print(fn2(100));
}
