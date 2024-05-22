import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stocki_app/appConstants/app_colors.dart';
import 'package:stocki_app/appConstants/app_constants.dart';
import 'package:stocki_app/appConstants/app_images.dart';

import '../../appConstants/text.dart';
import 'Data/reservation_data.dart';

class ReservationView extends StatefulWidget {
  const ReservationView({super.key});

  @override
  State<ReservationView> createState() => _ReservationViewState();
}

class _ReservationViewState extends State<ReservationView> {
  final data = ReservationData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20.w, 70.h, 20.w, 30.h),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 04.w, vertical: 2.h),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.searchFieldColor.withOpacity(.25),
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(color: AppColors.whiteColor)),
                child: TextFormField(
                  cursorColor: AppColors.whiteColor,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: SizedBox(
                          height: 20.h,
                          width: 20.h,
                          child: Center(
                              child: SvgPicture.asset(AppImages.searchSvg2)))),
                ),
              ),
            ),
            12.ht,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height: 650.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: data.reservationData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                      margin: EdgeInsets.only(bottom: 10.h),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.revContainerColor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: 100.h,
                              width: 100.w,
                              child:
                                  Image.asset(data.reservationData[index].image)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text16(
                                title: data.reservationData[index].title,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor,
                              ),
                              Text10(
                                title: data.reservationData[index].date,
                                fontWeight: FontWeight.w400,
                              ),
                              Text10(
                                title: data.reservationData[index].brand,
                                fontWeight: FontWeight.w400,
                              ),
                              Text26(
                                title: data.reservationData[index].price,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          SizedBox(
                              height: 70.h,
                              width: 70.h,
                              child: Image.asset(AppImages.qrPng))
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
