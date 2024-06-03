import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:stocki_app/screens/productDetailsView/provider/product_details_provider.dart';
import 'package:stocki_app/screens/splashView/provider/slpash_provider.dart';
import 'package:stocki_app/screens/splashView/splash_view.dart';

import 'appConstants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductDetailsProvider(),),
        // ChangeNotifierProvider(create: (_) => SplashProvider(),)
      ],
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        child: GetMaterialApp(
          title: 'Stocki App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            scaffoldBackgroundColor: AppColors.whiteColor
          ),
          home: const SplashView(),
        ),
      ),
    );
  }
}

