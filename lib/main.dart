// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vcall_chat/res/routes/route.dart';
import 'package:vcall_chat/view/login.dart';

import 'res/routes/routes_name.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Live Video App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      getPages: AppRotes.appRotes(),
      initialRoute: RoutesName.splash_screen,
      // home: const Login(),
    );
  }
}
