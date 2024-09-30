import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vcall_chat/utils/utils.dart';
import 'package:vcall_chat/view_modal/controller/login_view_modal.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginViewModel loginViewModel = Get.put(LoginViewModel());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 11),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: loginViewModel.emailController,
                  focusNode: loginViewModel.emailFocusNode,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      Utils.snackBar('Email', 'Enter Email');
                      return 'Enter email';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) {
                    Utils.fieldFocusChange(
                        context,
                        loginViewModel.emailFocusNode,
                        loginViewModel.passwordFocusNode);
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 21),
                TextFormField(
                  controller: loginViewModel.passwordController,
                  focusNode: loginViewModel.passwordFocusNode,
                  // obscuringCharacter: '-',
                  // obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      Utils.snackBar('Password', 'Enter password');
                      return 'Enter password';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 21),
                Obx(
                  () => TextButton(
                    onPressed: loginViewModel.loading.value
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              loginViewModel.loginApi();
                            }
                          },
                    child: const Text('Submit'),
                  ),
                ),
                Obx(
                  () => loginViewModel.loading.value
                      ? const CircularProgressIndicator()
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
