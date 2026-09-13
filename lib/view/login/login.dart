import 'package:expense_tracker/constants/app_images.dart';
import 'package:expense_tracker/routes/app_routes.dart';
import 'package:expense_tracker/view/login/login_controller.dart';
import 'package:expense_tracker/widgets/custom_title.dart';
import 'package:expense_tracker/widgets/primary_button.dart';
import 'package:expense_tracker/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends GetView<LoginController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(AppImages.logo, width: 320, height: 320),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SpendWise —',
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Track. Understand. Save.',
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  CustomTitle(title: "Email"),
                  CustomTextField(
                    hintText: "Enter your email here",
                    prefixIcon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  CustomTitle(title: "Password"),
                  Obx(
                    () => CustomTextField(
                      hintText: "Enter minimum 6 characters",
                      prefixIcon: Icons.lock,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: controller.isObscured.value,
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.isObscured.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                        onPressed: () => controller.toggleVisibility(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  PrimaryButton(title: "Login", onTap: () {
                    Get.toNamed(AppRoutes.home);
                  }),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.signup);
                    },
                    child: Center(
                      child: Text(
                        'Don\'t have an account? Register',
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
