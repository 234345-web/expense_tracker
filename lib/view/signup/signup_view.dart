import 'package:expense_tracker/constants/app_images.dart';
import 'package:expense_tracker/widgets/custom_title.dart';
import 'package:expense_tracker/widgets/primary_button.dart';
import 'package:expense_tracker/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Sign up",
          style: GoogleFonts.montserrat(
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create your account here!",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Center(
                child: Image.asset(AppImages.signlogo, width: 250, height: 250),
              ),
              SizedBox(height: 20),
              CustomTitle(title: "Name"),
              CustomTextField(
                hintText: "Enter your name here",
                prefixIcon: Icons.person,
              ),
              SizedBox(height: 20),
              CustomTitle(title: "Email"),
              CustomTextField(
                hintText: "Enter your email here",
                prefixIcon: Icons.email,
              ),
              SizedBox(height: 20),
              CustomTitle(title: "Password"),
              CustomTextField(
                hintText: "Enter your password here",
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(height: 50),
              PrimaryButton(title: "Sign up", onTap: (){}),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Center(
                  child: Text(
                    'Already have an account? Login',
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
    );
  }
}
