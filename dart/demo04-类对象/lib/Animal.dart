/**注意dart和其他的面相对象的语言不一样，他没有public private protected 这些访问修饰符
 * 可以使用_把一个属性护着方法定义成私有的
 * 
 */

class Animal {
  String _name;//添加下划线代表他是私有的属性
  int _age;
  //默认构造函数
  Animal(this._name, this._age);

  //添加下划线代表他是私有的函数
  _priviteinfo() {
    print('我是私有方法');
  }

  publicinfo() {
    print('我是公开的方法调用私有方法');
    this._priviteinfo();
  }

//通过共的函数获取私有的属性值班
  String getname(){
    return this._name;
   }
}
