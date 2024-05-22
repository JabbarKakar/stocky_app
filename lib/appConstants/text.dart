import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stocki_app/appConstants/app_colors.dart';

class Text48 extends StatelessWidget {
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final void Function()? onTap;
  const Text48({super.key, required this.title, this.color, this.textAlign, this.fontWeight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        textAlign: textAlign,
        title, style: GoogleFonts.poppins(
          fontSize: 48.sp,
          color: color ?? AppColors.primaryColor,
          fontWeight: fontWeight ?? FontWeight.w600

      ),

      ),
    );
  }
}


class Text26 extends StatelessWidget {
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final void Function()? onTap;
  const Text26({super.key, required this.title, this.color, this.textAlign, this.fontWeight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        textAlign: textAlign,
        title, style: GoogleFonts.poppins(
          fontSize: 26.sp,
          color: color ?? AppColors.primaryColor,
          fontWeight: fontWeight ?? FontWeight.w600

      ),

      ),
    );
  }
}

class Text24 extends StatelessWidget {
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final void Function()? onTap;
  const Text24({super.key, required this.title, this.color, this.textAlign, this.fontWeight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        textAlign: textAlign,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        title, style: GoogleFonts.poppins(
          fontSize: 24.sp,
          color: color ?? AppColors.primaryColor,
          fontWeight: fontWeight ?? FontWeight.w600

      ),

      ),
    );
  }
}

class Text20 extends StatelessWidget {
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final void Function()? onTap;
  const Text20({super.key, required this.title, this.color, this.textAlign, this.fontWeight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        textAlign: textAlign,
        title, style: GoogleFonts.poppins(
          fontSize: 20.sp,
          color: color ?? AppColors.whiteColor,
          fontWeight: fontWeight ?? FontWeight.w600

      ),

      ),
    );
  }
}

class Text18 extends StatelessWidget {
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final void Function()? onTap;
  const Text18({super.key, required this.title, this.color, this.textAlign, this.fontWeight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        textAlign: textAlign,
        maxLines: 5,
        title, style: GoogleFonts.poppins(

          fontSize: 18.sp,
          color: color ?? AppColors.grayText,
          fontWeight: fontWeight ?? FontWeight.w400

      ),

      ),
    );
  }
}

class Text16 extends StatelessWidget {
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final void Function()? onTap;
  const Text16({super.key, required this.title, this.color, this.textAlign, this.fontWeight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        textAlign: textAlign,
        title, style: GoogleFonts.poppins(
          fontSize: 16.sp,
          color: color ?? AppColors.grayText,
          fontWeight: fontWeight ?? FontWeight.w400

      ),

      ),
    );
  }
}

class Text14 extends StatelessWidget {
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final void Function()? onTap;
  const Text14({super.key, required this.title, this.color, this.textAlign, this.fontWeight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        textAlign: textAlign,
        title, style: GoogleFonts.poppins(

        fontSize: 14.sp,
        color: color ?? AppColors.labelText,
        fontWeight: fontWeight ?? FontWeight.w500

      ),

      ),
    );
  }
}

class Text12 extends StatelessWidget {
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final void Function()? onTap;
  const Text12({super.key, required this.title, this.color, this.textAlign, this.fontWeight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        textAlign: textAlign,
        title, style: GoogleFonts.poppins(
        fontSize: 12.sp,
        color: color ?? AppColors.whiteColor,
        fontWeight: fontWeight ?? FontWeight.w400

      ),

      ),
    );
  }
}

class Text10 extends StatelessWidget {
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final void Function()? onTap;
  const Text10({super.key, required this.title, this.color, this.textAlign, this.fontWeight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        textAlign: textAlign,
        title, style: GoogleFonts.poppins(
        fontSize: 10.sp,
        color: color ?? AppColors.labelText,
        fontWeight: fontWeight ?? FontWeight.w400

      ),

      ),
    );
  }
}





