import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../repository/login_repository.dart';
import '../../../utils/utils.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();

  final emailController = TextEditingController().obs;

  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      loading.value = false;

      if (value['error'] == 'user not found') {
        Utils.snackBar('Login', value['error']);
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}
//
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:mvvm_architucture/utils/utils.dart';
//
// import '../../repository/login_repository.dart';
//
// class LoginController extends GetxController {
//   final _api = LoginRepository();
//   final emailController = TextEditingController().obs;
//   final passController = TextEditingController().obs;
//
//   final emailFocusNode = FocusNode().obs;
//   final passFocusNode = FocusNode().obs;
//
//   RxBool loading = false.obs;
//
//   void loginApi() {
//     loading.value = true;
//     Map data = {
//       "email": emailController.value.text,
//       "password": passController.value.text
//     };
//     _api.loginApi(data).then((value) {
//       loading.value = false;
//       Utils.snackBar('Login', "Login successful");
//     }).onError((error, stackTrace) {
//       print(error.toString());
//       loading.value = false;
//       Utils.snackBar('Error', error.toString());
//     });
//   }
// }
