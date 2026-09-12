import 'package:expense_tracker/routes/app_routes.dart';
import 'package:expense_tracker/view/login/login.dart';
import 'package:expense_tracker/view/login/login_controller.dart';
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
   
    
  ];
}