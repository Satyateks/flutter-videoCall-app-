import 'package:get/get.dart';
import 'package:vcall_chat/res/routes/routes_name.dart';
import 'package:vcall_chat/view/splash_screen.dart';

import '../../view/login.dart';

class AppRotes {
  static List<GetPage> appRotes() => [
        GetPage(
          name: RoutesName.splash_screen,
          page: () => const SplashScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 251),
        ),
        GetPage(
          name: RoutesName.loging_screen,
          page: () => const Login(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 251),
        ),
      ];
}
