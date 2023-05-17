import 'package:get/get.dart';

import 'regist_logic.dart';

class RegistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistLogic());
  }
}
