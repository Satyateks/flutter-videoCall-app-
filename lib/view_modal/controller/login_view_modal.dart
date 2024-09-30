import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vcall_chat/repositry/login_repositry.dart';
import 'package:vcall_chat/utils/utils.dart';

class LoginViewModel extends GetxController {
  final LoginRepositry _api = LoginRepositry();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  RxBool loading = false.obs;

  void loginApi() async {
    loading.value = true;
    Map<String, String> data = {
      'email': emailController.text,
      'password': passwordController.text,
    };

    try {
      var response = await _api.loginApi(data);
      // ignore: unnecessary_type_check
      if (response is Map<String, dynamic>) {
        Utils.snackBar('Login', 'Login Successful');
      } else {
        Utils.snackBar('Error', 'Unexpected response format');
      }
    } catch (error) {
      Utils.snackBar('Error', error.toString());
    } finally {
      loading.value = false;
    }
  }
}
