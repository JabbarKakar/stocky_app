import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:stocki_app/appConstants/app_colors.dart';
import 'package:stocki_app/appConstants/app_images.dart';

import '../loginView/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.to(() => const LoginView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Center(child: Image.asset(AppImages.mainLogoPng))],
      ),
    );
  }
}
