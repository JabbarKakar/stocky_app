import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:stocki_app/appConstants/app_colors.dart';
import 'package:stocki_app/appConstants/app_constants.dart';
import 'package:stocki_app/appConstants/text.dart';
import 'package:stocki_app/screens/botoomNa%20Bar/bottom_nav_bar.dart';
import 'package:stocki_app/screens/forgotPasswordView/forgot_password_view.dart';
import 'package:stocki_app/screens/signupView/signup_vew.dart';
import 'package:stocki_app/widgets/custom_button.dart';
import 'package:stocki_app/widgets/custom_text_form_field.dart';

import '../../appConstants/app_images.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 390.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
              ),
              child: Center(
                child: Image.asset(AppImages.mainLogoPng),
              ),
            ),
            50.ht,
            const Text24(title: "Log In"),
            15.ht,
            const Text18(
              title: "Welcome Back!",
              fontWeight: FontWeight.w500,
            ),
            30.ht,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text14(title: "Your Email"),
                  10.ht,
                  CustomTextFormField(
                    obscureText: false,
                    hintText: "Enter your email",
                  ),
                  20.ht,
                  const Text14(title: "Password"),
                  10.ht,
                  CustomTextFormField(
                    obscureText: true,
                    hintText: "Enter your password",
                  ),
                  15.ht,
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text12(title: "Forgot Password?",
                      onTap: (){
                        Get.to(() => const ForgotPasswordView());
                      },
                      )),
                  25.ht,
                  CustomButton(onTap: () {
                    Get.offAll(() =>  BottomNavBar());
                  }, title: "Log in"),
                  30.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text16(title: "Don't have an account? "),
                      Text16(
                        title: "Sign Up",
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                        onTap: () {
                          Get.to(() => const SignupView());
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
