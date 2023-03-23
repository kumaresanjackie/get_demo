import 'package:get/get.dart';

import '../modules/addimage/bindings/addimage_binding.dart';
import '../modules/addimage/views/addimage_view.dart';
import '../modules/counterpage/bindings/counterpage_binding.dart';
import '../modules/counterpage/views/counterpage_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/loginpage/bindings/loginpage_binding.dart';
import '../modules/loginpage/views/loginpage_view.dart';
import '../modules/todo/bindings/todo_binding.dart';
import '../modules/todo/views/todo_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TODO;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGINPAGE,
      page: () => const LoginpageView(),
      binding: LoginpageBinding(),
    ),
    GetPage(
      name: _Paths.COUNTERPAGE,
      page: () => CounterpageView(),
      binding: CounterpageBinding(),
    ),
    GetPage(
      name: _Paths.TODO,
      page: () => TodoView(),
      binding: TodoBinding(),
    ),
    GetPage(
      name: _Paths.ADDIMAGE,
      page: () => AddimageView(),
      binding: AddimageBinding(),
    ),
  ];
}
