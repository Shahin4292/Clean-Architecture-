import 'dart:async';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mvvm_architucture/res/routes/routes_name.dart';

class SplashService {
  void isLogin() {
    Timer(
        const Duration(seconds: 3), () => Get.toNamed(RoutesName.loginScreen));
  }
}
