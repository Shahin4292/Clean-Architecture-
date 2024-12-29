import 'package:get/get.dart';
import 'package:mvvm_architucture/res/routes/routes_name.dart';
import 'package:mvvm_architucture/views/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 300),
        ),
      ];
}
