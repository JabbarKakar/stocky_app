import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../appConstants/app_colors.dart';
import '../appConstants/text.dart';



class CustomButton extends StatelessWidget {
  final double? width;
  final void Function() onTap;
  final String title;
  const CustomButton({
    Key? key,
    // this.color,
    this.width,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 17.h),
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Center(
          child: Text20(title: title),
        ),
      ),
    );
  }
}

