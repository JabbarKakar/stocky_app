// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:stocki_app/appConstants/app_colors.dart';
// import 'package:stocki_app/appConstants/app_constants.dart';
// import 'package:stocki_app/appConstants/app_images.dart';
// import 'package:stocki_app/appConstants/text.dart';
//
// class MainDrawer extends StatefulWidget {
//   const MainDrawer({super.key});
//
//   @override
//   State<MainDrawer> createState() => _MainDrawerState();
// }
//
// class _MainDrawerState extends State<MainDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: AppColors.whiteColor,
//       child: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             // height: 150.h,
//             decoration: BoxDecoration(
//                 color: AppColors.randomTextColor
//             ),
//             child: Center(
//               child: Container(
//                   padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
//                   child: Image.asset(AppImages.drawerLogoPng)),
//             ),
//           ),
//           25.ht,
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.w),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     SizedBox(
//                         height: 29.h,
//                         width: 29.h,
//                         child: Image.asset(AppImages.withdrawPng)),
//                     15.wd,
//                     const Text18(title: 'Withdraw')
//                   ],
//                 ),
//                 25.ht,
//                 Row(
//                   children: [
//                     SizedBox(
//                         height: 29.h,
//                         width: 29.h,
//                         child: Image.asset(AppImages.ratePng)),
//                     15.wd,
//                     const Text18(title: 'Rate Us')
//                   ],
//                 ),
//                 25.ht,
//                 Row(
//                   children: [
//                     SizedBox(
//                         height: 29.h,
//                         width: 29.h,
//                         child: Image.asset(AppImages.sharePng)),
//                     15.wd,
//                     const Text18(title: 'Share')
//                   ],
//                 ),
//                 25.ht,
//                 Row(
//                   children: [
//                     SizedBox(
//                         height: 29.h,
//                         width: 29.h,
//                         child: Image.asset(AppImages.logoutPng)),
//                     15.wd,
//                     const Text18(title: 'Logout')
//                   ],
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
