import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:mvvm_architucture/utils/utils.dart';

import '../../view_models/controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final loginController = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('Email', 'Enter email');
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                          context,
                          loginController.emailFocusNode.value,
                          loginController.passFocusNode.value);
                    },
                    controller: loginController.emailController.value,
                    focusNode: loginController.emailFocusNode.value,
                    decoration: const InputDecoration(
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(color: Colors.white),
                      fillColor: Colors.grey,
                      filled: true,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('Password', 'Enter password');
                      }
                      return null;
                    },
                    controller: loginController.passController.value,
                    focusNode: loginController.passFocusNode.value,
                    decoration: const InputDecoration(
                      hintText: 'Enter password',
                      hintStyle: TextStyle(color: Colors.white),
                      fillColor: Colors.grey,
                      filled: true,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
