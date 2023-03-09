import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/loginpage/bindings/loginpage_binding.dart';
import '../modules/loginpage/views/loginpage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGINPAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGINPAGE,
      page: () => const LoginpageView(),
      binding: LoginpageBinding(),
    ),
  ];
}
