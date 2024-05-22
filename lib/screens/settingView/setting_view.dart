import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:stocki_app/appConstants/app_colors.dart';
import 'package:stocki_app/appConstants/app_constants.dart';
import 'package:stocki_app/appConstants/app_images.dart';
import 'package:stocki_app/screens/loginView/login_view.dart';

import '../../appConstants/text.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20.w, 90.h, 20.w, 30.h),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
              ),
              child: Column(
                children: [
                  Text16(
                    title: "Michael Samuel",
                    fontWeight: FontWeight.w600,
                    color: AppColors.whiteColor,
                  ),
                  Text14(
                    title: "MichaelSamuel@gmail.com",
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
            25.ht,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text20(
                    title: "Settings",
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                  25.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.favSvg,
                              height: 22.h,
                              width: 22.h,
                            ),
                            12.wd,
                            Text14(
                              title: "Favorite",
                              color: AppColors.settingText,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20.sp,
                        color: AppColors.settingText,
                      )
                    ],
                  ),
                  25.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.accountSvg,
                              height: 22.h,
                              width: 22.h,
                            ),
                            12.wd,
                            Text14(
                              title: "Account",
                              color: AppColors.settingText,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20.sp,
                        color: AppColors.settingText,
                      )
                    ],
                  ),
                  25.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.settingSvg,
                              height: 22.h,
                              width: 22.h,
                            ),
                            12.wd,
                            Text14(
                              title: "Notification",
                              color: AppColors.settingText,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20.sp,
                        color: AppColors.settingText,
                      )
                    ],
                  ),
                  25.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.orderHistorySvg,
                              height: 22.h,
                              width: 22.h,
                            ),
                            12.wd,
                            Text14(
                              title: "Order History",
                              color: AppColors.settingText,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20.sp,
                        color: AppColors.settingText,
                      )
                    ],
                  ),
                  30.ht,
                  const Divider(),
                  30.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.referralCodeSvg,
                              height: 22.h,
                              width: 22.h,
                            ),
                            12.wd,
                            Text14(
                              title: "Referral Code",
                              color: AppColors.settingText,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          child: Row(
                        children: [
                          Text14(
                            title: "AVE232NJCS",
                            fontWeight: FontWeight.w400,
                            color: AppColors.settingText,
                          ),
                          10.wd,
                          SvgPicture.asset(AppImages.copySvg)
                        ],
                      )),
                    ],
                  ),
                  25.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.faqsSvg,
                              height: 22.h,
                              width: 22.h,
                            ),
                            12.wd,
                            Text14(
                              title: "FAOs",
                              color: AppColors.settingText,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20.sp,
                        color: AppColors.settingText,
                      )
                    ],
                  ),
                  130.ht,
                  Container(
                    height: 65.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.handFreeButton,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppImages.handFreeSvg),
                        10.wd,
                        Text16(
                          title: "Got Questions? Contact Us!",
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                  20.ht,
                  GestureDetector(
                    onTap: (){
                      Get.offAll(() => const LoginView());
                    },
                    child: Container(
                      height: 65.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.blackColor.withOpacity(.50)),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Center(
                          child: Text16(
                        title: "Log Out",
                        fontWeight: FontWeight.w500,
                            color: AppColors.blackColor,
                      )),
                    ),
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
