import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:stocki_app/appConstants/app_colors.dart';
import 'package:stocki_app/appConstants/app_constants.dart';
import 'package:stocki_app/appConstants/text.dart';
import 'package:stocki_app/screens/loginView/login_view.dart';
import 'package:stocki_app/screens/otpView/otp_view.dart';
import 'package:stocki_app/widgets/custom_button.dart';
import 'package:stocki_app/widgets/custom_text_form_field.dart';

import '../../appConstants/app_images.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 190.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
              ),
              child: Center(
                child: SizedBox(
                    height: 60.h,
                    width: 225.w,
                    child: Image.asset(AppImages.mainLogoPng)),
              ),
            ),
            30.ht,
            const Text24(title: "Create New Account"),
            8.ht,
            const Text18(
              title: "Welcome to Stocki",
              fontWeight: FontWeight.w500,
            ),
            20.ht,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text14(title: "First Name"),
                  8.ht,
                  CustomTextFormField(
                    obscureText: false,
                    hintText: "Enter your First Name",
                  ),
                  15.ht,
                  const Text14(title: "Last Name"),
                  8.ht,
                  CustomTextFormField(
                    obscureText: false,
                    hintText: "Enter your Last Name",
                  ),
                  15.ht,
                  const Text14(title: "Phone Number"),
                  8.ht,
                  CustomTextFormField(
                    obscureText: false,
                    hintText: "Enter your Phone Number",
                    keyboardType: TextInputType.phone,
                  ),
                  15.ht,
                  const Text14(title: "Your Email"),
                  8.ht,
                  CustomTextFormField(
                    obscureText: false,
                    hintText: "Enter your email",
                  ),
                  15.ht,
                  const Text14(title: "Password"),
                  8.ht,
                  CustomTextFormField(
                    obscureText: true,
                    hintText: "Enter your password",
                  ),
                  25.ht,
                  CustomButton(
                      onTap: () {
                        Get.to(() => const OTPView());
                      },
                      title: "Sign Up"),
                  20.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text16(title: "Already have an account? "),
                      Text16(
                        title: "Log in",
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                        onTap: () {
                          Get.offAll(() => const LoginView());
                        },
                      ),
                    ],
                  ),
                  20.ht
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
