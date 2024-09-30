import 'package:flutter/material.dart';
import 'package:vcall_chat/res/colors/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      appBar: AppBar(title: const Text('Splash Screen')),
      body: const Text('splash screen'),
    );
  }
}
