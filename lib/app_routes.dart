import 'package:diversify/modules/start/bindings/onboard_bindings.dart';
import 'package:diversify/modules/start/onboard_screen.dart';
import 'package:diversify/modules/start/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String onboard = '/onboard';

  static const String entry = '/entry';

  static final routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
    ),

    GetPage(
      name: onboard,
      page: () => const OnboardScreen(),
      binding: OnboardBindings(),
    ),

    GetPage(
      name: onboard,
      page: () => const OnboardScreen(),
      binding: OnboardBindings(),
    ),
  ];
}
