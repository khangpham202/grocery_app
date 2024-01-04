import 'package:get/get.dart';
import 'package:my_shopping_app/view/dashboard/dashboard_binding.dart';
import 'package:my_shopping_app/view/dashboard/dashboard_screen.dart';
import 'package:my_shopping_app/view/sign_in/sign_in_screen.dart';
import 'package:my_shopping_app/view/sign_up/sign_up_screen.dart';

import 'app_route.dart';

class AppPage {
  static var list = [
    GetPage(
      name: AppRoute.dashboard,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(name: AppRoute.signIn, page: () => const SignInScreen()),
    GetPage(name: AppRoute.signUp, page: () => const SignUpScreen()),
  ];
}
