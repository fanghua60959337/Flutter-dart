class Rect {
  num height;
  num width;
//默认的构造方法
 Rect(this.height, this.width);
//可以给默认构造函数设置默认值
  // Rect():height = 18, width=10{
  //   print('${this}');
  // }

  area() {
    return this.height * this.width;
  }

//get 方法:get 开头 + 函数名
  get receivearea {
    return this.height * this.width;
  }

// set方法：set开头 +函数名（参数1，参数2）
  set aresheight(value) {
    this.height = value;
  }
}
