import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stocki_app/appConstants/app_colors.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:stocki_app/appConstants/app_constants.dart';

import '../../appConstants/text.dart';
import '../../widgets/custom_button.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  final String _code = "";
  String signature = "{{ app signature }}";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  )),
            ),
            50.ht,
            const Text24(title: "OTP Verification"),
            15.ht,
            SizedBox(
              width: 270.w,
              child: const Text18(
                textAlign: TextAlign.center,
                title: "Enter the verification code sent to your email address",
                fontWeight: FontWeight.w500,
              ),
            ),
            60.ht,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PinFieldAutoFill(
                    codeLength: 6,
                    decoration: BoxLooseDecoration(
                        bgColorBuilder:
                            FixedColorBuilder(AppColors.textFormFieldColor),
                        textStyle: GoogleFonts.poppins(
                            fontSize: 18.sp, color: AppColors.primaryColor),
                        strokeColorBuilder: PinListenColorBuilder(
                            AppColors.primaryColor, Colors.transparent),
                        hintText: '000000',
                        hintTextStyle: GoogleFonts.poppins(
                            color: AppColors.grayText, fontSize: 18.sp)),
                    currentCode: _code,
                    onCodeSubmitted: (code) {},
                    onCodeChanged: (code) {
                      if (code!.length == 6) {
                        FocusScope.of(context).requestFocus(FocusNode());
                      }
                    },
                  ),
                  80.ht,
                  CustomButton(onTap: () {}, title: "Send Code")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
