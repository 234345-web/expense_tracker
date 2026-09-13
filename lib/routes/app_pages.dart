import 'package:expense_tracker/routes/app_routes.dart';
import 'package:expense_tracker/view/home_screen/home_controller.dart';
import 'package:expense_tracker/view/home_screen/home_screen.dart';
import 'package:expense_tracker/view/login/login.dart';
import 'package:expense_tracker/view/login/login_controller.dart';
import 'package:expense_tracker/view/signup/signup_controller.dart';
import 'package:expense_tracker/view/signup/signup_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.login,
      page: () => const Login(),
      binding: BindingsBuilder(() {
        Get.lazyPut<LoginController>(
          () => LoginController(),
        );
      }), 
    ),
   GetPage(
      name: AppRoutes.signup,
      page: () => const SignupView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<SignupController>(
          () => SignupController(),
        );
      }), 
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeController>(
          () => HomeController(),
        );
      }),
    ),
  ];
}