//泛型：通俗理解：泛型就是解决 类 接口 方法的复用性以及对不特定数据类型的支持（类型校验）
class Perosn {
  var perosnName;
  int sex = 0;
  //泛滥型函数
  T getInfo<T>(T value) {
    return value;
  }

  int getage<int>(int value) {
    return value;
  }
}

class Mylist<T> {
  List list = <T>[];
  void add(T value) {
    this.list.add(value);
  }

  List getlist() {
    return list;
  }
  // 案例：把下面类转换成泛型类，要求MyList里面可以增加int类型的数据，也可以增加String
}

void main() {
  Perosn c = Perosn();
  print(c.getInfo('章三'));
  print(c.getInfo(4));
  print(c.getage(33));

  List list = List<String>.filled(2, '');
  list[0] = '章三';
  list[1] = '李四';

//这里创建的对象里面的数据没有没有制定类型
  Mylist mylist = Mylist();
  mylist.add('章三');
  mylist.add(12);
  mylist.add(true);
  print(mylist.getlist());

//这里创建的对象指定里面的数据类型
  Mylist mylist2 = Mylist<String>();
  mylist2.add('章三');
  mylist2.add('章四');
  mylist2.add('章五');
  print(mylist2.getlist());

//这里的 MemoryCache的泛型被设置成了String所以他的value值必须是string
  MemoryCache cache = MemoryCache<String>();
  cache.setBykey('name', '章三');

//这里的 FileCache的泛型被设置成了int所以他的value值必须是int
  FileCache filecache = FileCache<int>();
  filecache.setBykey('age', 100);

//这里的 FileCache的泛型被设置成了Map所以他的value值必须是Map
  FileCache filecache1 = FileCache<Map>();
  filecache1.setBykey('hob',{'户外':'跑步','室内':'游泳'});
}

//======================================================
abstract class Cache<T> {
  getBykey(String key);
  void setBykey(String key, T value);
}

class FileCache<T> implements Cache<T> {
  @override
  getBykey(String key) {
    // TODO: implement getBykey
    throw UnimplementedError();
  }

  @override
  void setBykey(String key, T value) {
    // TODO: implement setBykey
    print('我是文件缓存把 key=${key}  value=${value} 的数据写入到内存中');
  }
}

class MemoryCache<T> implements Cache<T> {
  @override
  getBykey(String key) {
    // TODO: implement getBykey
    // throw UnimplementedError();
    return null;
  }

  @override
  void setBykey(String key, T value) {
    // TODO: implement setBykey
    print('我是内存缓存把 key=${key}  value=${value} 的数据写入到内存中');
  }
}
