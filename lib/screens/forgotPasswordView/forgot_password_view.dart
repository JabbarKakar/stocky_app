import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:stocki_app/appConstants/app_colors.dart';
import 'package:stocki_app/appConstants/app_constants.dart';
import 'package:stocki_app/appConstants/text.dart';
import 'package:stocki_app/widgets/custom_button.dart';
import 'package:stocki_app/widgets/custom_text_form_field.dart';

import '../otpView/otp_view.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 160.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: AppColors.whiteColor,)),
                  )),
            ),
            50.ht,
            const Text24(title: "Forgot Password"),
            15.ht,
            SizedBox(
              width: 270.w,
              child: const Text18(
                textAlign: TextAlign.center,
                title: "Don't worry! Just enter the email address linked with your account",
                fontWeight: FontWeight.w500,
              ),
            ),
            40.ht,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text14(title: "Your Email"),
                  15.ht,
                  CustomTextFormField(
                    obscureText: false,
                    hintText: "Enter your email",
                  ),
                  60.ht,
                  CustomButton(onTap: () {
                    Get.to(() => OTPView());
                  }, title: "Send Code"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
