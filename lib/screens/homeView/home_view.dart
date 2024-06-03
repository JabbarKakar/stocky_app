import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:stocki_app/appConstants/app_colors.dart';
import 'package:stocki_app/appConstants/app_constants.dart';
import 'package:stocki_app/appConstants/app_images.dart';
import 'package:stocki_app/screens/productDetailsView/product_details_view.dart';

import '../../appConstants/text.dart';
import '../searchView/Data/search_data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController pageController = PageController();
  int currentPage = 0;
  Timer? timer;
  final data = SearchData();
  final List<Color> colorsList = [
    AppColors.pageViewContainer,
    AppColors.pageViewContainer2
  ];


  List<Widget> _buildDots(int itemCount, int currentPage) {
    List<Widget> dots = [];
    for (int i = 0; i < itemCount; i++) {
      dots.add(Container(
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        width: i == currentPage ? 12.0 : 8.0,
        height: i == currentPage ? 12.0 : 8.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: i == currentPage ? AppColors.primaryColor : Colors.grey,
        ),
      ));
    }
    return dots;
  }

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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Container(
                              height: 40.h,
                              width: 40.h,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  shape: BoxShape.circle),
                              child: Center(
                                  child: SvgPicture.asset(
                                AppImages.menuSvg,
                                height: 24.h,
                                width: 24.h,
                              )),
                            ),
                            10.wd,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text18(
                                  title: "Hello  \u{1F44B}",
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w700,
                                ),
                                Text14(
                                  title: "Michael Samuel",
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            shape: BoxShape.circle),
                        child: Center(
                            child: SvgPicture.asset(
                          AppImages.notificationSvg,
                          height: 24.h,
                          width: 24.h,
                        )),
                      )
                    ],
                  ),
                  25.ht,
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 04.w, vertical: 2.h),
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
                                  child:
                                      SvgPicture.asset(AppImages.searchSvg2)))),
                    ),
                  ),
                ],
              ),
            ),
            20.ht,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text18(
                    title: "Categories",
                    fontWeight: FontWeight.w600,
                  ),
                  15.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10.w),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle),
                        child: Center(
                            child: SvgPicture.asset(
                              AppImages.clothesSvg,
                              height: 24,
                              width: 24,
                            )),
                                          ),
                        10.ht,
                        Text12(title: "Clothes", fontWeight: FontWeight.w400, color: AppColors.grayText,)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10.w),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle),
                        child: Center(
                            child: SvgPicture.asset(
                              AppImages.electronicSvg,
                              height: 24,
                              width: 24,
                            )),
                                          ),
                        10.ht,
                        Text12(title: "Electronics", fontWeight: FontWeight.w400, color: AppColors.grayText,)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10.w),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle),
                        child: Center(
                            child: SvgPicture.asset(
                              AppImages.shoesSvg,
                              height: 24,
                              width: 24,
                            )),
                                          ),
                        10.ht,
                        Text12(title: "Shoes", fontWeight: FontWeight.w400, color: AppColors.grayText,)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10.w),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle),
                        child: Center(
                            child: SvgPicture.asset(
                              AppImages.watchSvg,
                              height: 24,
                              width: 24,
                            )),
                                          ),
                        10.ht,
                        Text12(title: "Watches", fontWeight: FontWeight.w400, color: AppColors.grayText,)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10.w),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle),
                        child: Center(
                            child: SvgPicture.asset(
                              AppImages.watchSvg,
                              height: 24,
                              width: 24,
                            )),
                                          ),
                        10.ht,
                        Text12(title: "Beauty", fontWeight: FontWeight.w400, color: AppColors.grayText,)
                      ],
                    ),
                    ],
                  ),
                  20.ht,
                  Text18(
                    title: "Promotions",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                  10.ht,
                  Container(
                    padding: EdgeInsets.symmetric(vertical: .5.h),
                    height: 210.h,
                    child: PageView.builder(
                      allowImplicitScrolling: true,
                      controller: pageController,
                      itemCount: colorsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 20.h),
                          width: 340.w,
                          margin: EdgeInsets.only(right: 10.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: colorsList[index]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text16(
                                    title: "Discount",
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.blackColor,
                                  ),
                                  Text48(
                                    title: "20%",
                                    fontWeight: FontWeight.w900,
                                    color: AppColors.primaryColor,
                                  ),
                                  Text12(
                                    title: "On your First Purchase",
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryColor,
                                  ),
                                  10.ht,
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 6.h),
                                    decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Text10(
                                        title: "Shop Now",
                                        color: AppColors.whiteColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: 170.h,
                                  width: 170.w,
                                  child: Image.asset(AppImages.shoe2Png))
                            ],
                          ),
                        );
                      },
                      onPageChanged: (int index) {
                        setState(() {
                          currentPage = index;
                        });
                      },
                    ),
                  ),
                  10.ht,
                  SizedBox(
                    height: 20.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildDots(colorsList.length, currentPage),
                    ),
                  ),
                  20.ht,
                  Text18(
                    title: "Featured Deals",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                  15.ht,
                  SizedBox(
                    height: 135.h,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: data.searchData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            Get.to(() => ProductDetailsView(title: data.searchData[index].title, url: '',));
                          },
                          child: Container(
                            width: 110.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 6.w, vertical: 5.h),
                            margin: EdgeInsets.only(right: 10.w),
                            decoration: BoxDecoration(
                                color: AppColors.revContainerColor,
                                borderRadius: BorderRadius.circular(10.r)),
                            child:    Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: SvgPicture.asset(AppImages.favSvg)),
                                Center(
                                  child: SizedBox(
                                      height: 60.h,
                                      width: 80.w,
                                      child: Image.asset(
                                          data.searchData[index].image)),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text12(
                                  title: data.searchData[index].title,
                                  fontWeight: FontWeight.w600,
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text12(
                                  title: data.searchData[index].price,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  20.ht,
                  Text18(
                    title: "Nearby Stores",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                  15.ht,
                  Image.asset(AppImages.mapPng),
                  40.ht
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



