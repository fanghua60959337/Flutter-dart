import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_logic.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<LoginLogic>();
    final state = Get.find<LoginLogic>().state;

    return Scaffold(
      //Scaffold 是Material Design 布局结构的基本实现。此类提供了用于显示drawer、snackbar 和底部 sheet 的API。
      appBar: AppBar(title: Text('你好flutter')),
      body: Center(
        child: const Text('登录'),
      ),
    );
  }
}
