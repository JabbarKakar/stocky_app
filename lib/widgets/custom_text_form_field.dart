import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

import '../appConstants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final InputBorder? focusedBorder;
  final InputBorder? border;
  final String? hintText;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  bool obscureText = false;
  CustomTextFormField(
      {super.key,
      this.controller,
      this.focusedBorder,
      this.border,
      this.hintText,
      this.prefixIcon,
      required this.obscureText,
        this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.textFormFieldColor,
      ),
      child: Center(
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 14.sp,
          ),
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle:  TextStyle(
              color: AppColors.grayText,
              fontSize: 14.sp,
            ),
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}


class SquareTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final InputBorder? focusedBorder;
  final InputBorder? border;
  final String? hintText;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  bool obscureText = false;
  SquareTextFormField(
      {super.key,
      this.controller,
      this.focusedBorder,
      this.border,
      this.hintText,
      this.prefixIcon,
      required this.obscureText, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 18.sp
          ),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle:  TextStyle(
              color: AppColors.blackColor,
              fontSize: 18.sp
            ),
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}
