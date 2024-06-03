import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:stocki_app/appConstants/app_colors.dart';
import 'package:stocki_app/appConstants/app_constants.dart';
import 'package:stocki_app/appConstants/app_images.dart';
import 'package:stocki_app/appConstants/text.dart';
import 'package:stocki_app/screens/productDetailsView/provider/product_details_provider.dart';
import 'package:stocki_app/widgets/custom_text_form_field.dart';

class ProductDetailsView extends StatefulWidget {
  final String title;
  final String url;
  const ProductDetailsView({super.key, required this.title, required this.url});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  int currentIndex = -1;

  List<String> sizeList = ["7", "7.5", "8", "8.5", "9", "9.5"];

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<ProductDetailsProvider>(context, listen: false)
        .getZaraDetails(url: widget.url);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Consumer<ProductDetailsProvider>(
          builder: (context, productDetailsProvider, child) {
            var data = productDetailsProvider.getPlacesDetailsModel;
            return productDetailsProvider.getPlacesDetailsModel.isNotEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: 300.w,
                                child: Text24(
                                  title: widget.title,
                                  textAlign: TextAlign.center,
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              )
                            ],
                          ),
                        ),
                      ),
                      20.ht,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 30.h),
                              decoration: BoxDecoration(
                                color: AppColors.revContainerColor,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Image.asset(AppImages.whiteShoePng),
                            ),
                            25.ht,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text14(
                                  title: "Men’s Shoes",
                                  fontWeight: FontWeight.w400,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showMyDialog(context);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15.w, vertical: 13.h),
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius:
                                          BorderRadius.circular(100.r),
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            AppImages.nikeStoreSvg),
                                        6.wd,
                                        Text14(
                                          title: data[0]
                                              .brand!
                                              .brandGroupCode
                                              .toString(),
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.whiteColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: 200.w,
                                    child: Text20(
                                      title: data[0].name.toString(),
                                      color: AppColors.primaryColor,
                                    )),
                                Text24(
                                  title: "\$${data[0].detail!.colors[0].price}",
                                  fontWeight: FontWeight.w700,
                                )
                              ],
                            ),
                            20.ht,
                            Text14(
                              title: data[0]
                                  .detail!
                                  .colors[0]
                                  .description
                                  .toString(),
                              fontWeight: FontWeight.w400,
                              textAlign: TextAlign.justify,
                              color: AppColors.productDetailsText,
                            ),
                            25.ht,
                            const Text16(
                              title: "Size",
                              fontWeight: FontWeight.w500,
                            ),
                            15.ht,
                            SizedBox(
                              height: 50.h,
                              width: double.infinity,
                              child: ListView.builder(
                                itemCount: data[0]
                                    .detail!
                                    .colors[0]
                                    .sizes[0]
                                    .attributes[0]
                                    .values
                                    .length,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        currentIndex = index;
                                      });
                                    },
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          height: 48.h,
                                          width: 48.h,
                                          margin: EdgeInsets.only(right: 10.w),
                                          decoration: BoxDecoration(
                                              color: index == currentIndex
                                                  ? AppColors.primaryColor
                                                  : AppColors
                                                      .textFormFieldColor,
                                              borderRadius:
                                                  BorderRadius.circular(10.r)),
                                          child: Center(
                                              child: Text20(
                                            title: data[0]
                                                .detail!
                                                .colors[0]
                                                .sizes[0]
                                                .attributes[0]
                                                .values[index]
                                                .toString(),
                                            fontWeight: FontWeight.w600,
                                            color: index == currentIndex
                                                ? AppColors.whiteColor
                                                : AppColors.primaryColor,
                                          )),
                                        ),
                                        index == currentIndex
                                            ? Positioned(
                                                right: 5,
                                                top: -1.5,
                                                child: Container(
                                                  height: 15.h,
                                                  width: 15.h,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppColors.whiteColor,
                                                      shape: BoxShape.circle),
                                                  child: Center(
                                                      child: Icon(
                                                    CupertinoIcons
                                                        .check_mark_circled,
                                                    size: 10.sp,
                                                    color:
                                                        AppColors.primaryColor,
                                                  )),
                                                ),
                                              )
                                            : const SizedBox.shrink()
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            40.ht,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text20(
                                  title: "Nike Shop Store",
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryColor,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.w, vertical: 13.h),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: Text14(
                                    title: "In Stock",
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            20.ht,
                            Row(
                              children: [
                                SvgPicture.asset(AppImages.timeSvg),
                                10.wd,
                                Text14(
                                  title: "Open",
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff0189DF),
                                ),
                                Text14(
                                  title: " . Closes 9:45 pm",
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.grayText,
                                ),
                              ],
                            ),
                            15.ht,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(AppImages.locationSvg),
                                10.wd,
                                SizedBox(
                                  width: 340.w,
                                  child: Text14(
                                      title:
                                          "Shop #7 24 B 2 Mahmoud, Mian Mehmood Ali Kasoori Rd, Gulberg III, Lahore",
                                      fontWeight: FontWeight.w400,
                                      textAlign: TextAlign.justify,
                                      color: AppColors.grayText),
                                ),
                              ],
                            ),
                            20.ht,
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 13.h),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(
                                      color: AppColors.primaryColor)),
                              child: const Center(
                                  child: Text14(
                                title: "Buy Online",
                                fontWeight: FontWeight.w700,
                              )),
                            ),
                            20.ht,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text16(
                                  title: "Store Location",
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      showMyDialog(context);
                                    },
                                    child: Text14(
                                      title: "Search Other Stores",
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.productDetailsText,
                                    )),
                              ],
                            ),
                            20.ht,
                            Image.asset(AppImages.mapPng),
                            25.ht,
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 13.h),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(
                                      color: AppColors.primaryColor)),
                              child: const Center(
                                  child: Text14(
                                title: "Navigate Now",
                                fontWeight: FontWeight.w700,
                              )),
                            ),
                            40.ht,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text16(
                                  title: "Reviews",
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor,
                                ),
                                Text14(
                                  title: "12 Reviews",
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.productDetailsText,
                                ),
                              ],
                            ),
                            25.ht,
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18.w, vertical: 20.h),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 50.h,
                                            width: 50.h,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle),
                                            child: Image.asset(
                                                AppImages.reviewPng),
                                          ),
                                          10.wd,
                                          Text16(
                                            title: "Jaime Martinez",
                                            fontWeight: FontWeight.w400,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18.sp,
                                          ),
                                          3.wd,
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18.sp,
                                          ),
                                          3.wd,
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18.sp,
                                          ),
                                          3.wd,
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18.sp,
                                          ),
                                          3.wd,
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18.sp,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  20.ht,
                                  Text14(
                                    title:
                                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, ",
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.grayText,
                                    textAlign: TextAlign.justify,
                                  )
                                ],
                              ),
                            ),
                            15.ht,
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18.w, vertical: 20.h),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.borderColor),
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 50.h,
                                            width: 50.h,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle),
                                            child: Image.asset(
                                                AppImages.reviewPng),
                                          ),
                                          10.wd,
                                          Text16(
                                            title: "Jaime Martinez",
                                            fontWeight: FontWeight.w400,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18.sp,
                                          ),
                                          3.wd,
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18.sp,
                                          ),
                                          3.wd,
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18.sp,
                                          ),
                                          3.wd,
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18.sp,
                                          ),
                                          3.wd,
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 18.sp,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  20.ht,
                                  Text14(
                                    title:
                                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, ",
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.grayText,
                                    textAlign: TextAlign.justify,
                                  )
                                ],
                              ),
                            ),
                            50.ht,
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 15.h),
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: const Center(
                                  child: Text20(
                                    title: "Reserve Now",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            40.ht
                          ],
                        ),
                      )
                    ],
                  )
                : SizedBox(
                    height: 600.h,
                    child: const Center(child: CircularProgressIndicator()));
          },
        ),
      ),
    );
  }

  static void showMyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.whiteColor,
          insetPadding: EdgeInsets.symmetric(horizontal: 35.w),
          child: Container(
            height: 850.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(20.r)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text14(
                    title: 'Enter Postcode',
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                  10.ht,
                  CustomTextFormField(
                    obscureText: false,
                    hintText: "Enter the  Postcode",
                  ),
                  30.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text20(
                        title: "Nike Shop Store",
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 13.h),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Text14(
                          title: "In Stock",
                          fontWeight: FontWeight.w700,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                  10.ht,
                  Row(
                    children: [
                      SvgPicture.asset(AppImages.timeSvg),
                      10.wd,
                      Text14(
                        title: "Open",
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0189DF),
                      ),
                      Text14(
                          title: " . Closes 9:45 pm",
                          fontWeight: FontWeight.w400,
                          color: AppColors.grayText),
                    ],
                  ),
                  10.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AppImages.locationSvg),
                      10.wd,
                      SizedBox(
                        width: 280.w,
                        child: Text14(
                            title:
                                "Shop #7 24 B 2 Mahmoud, Mian Mehmood Ali Kasoori Rd, Gulberg III, Lahore",
                            fontWeight: FontWeight.w400,
                            textAlign: TextAlign.justify,
                            color: AppColors.grayText),
                      ),
                    ],
                  ),
                  30.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text20(
                        title: "Nike Shop Store",
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 13.h),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Text14(
                          title: "In Stock",
                          fontWeight: FontWeight.w700,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                  10.ht,
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppImages.timeSvg,
                        color: Colors.red,
                      ),
                      10.wd,
                      const Text14(
                        title: "Closed",
                        fontWeight: FontWeight.w400,
                        color: Color(0xffff0000),
                      ),
                      Text14(
                          title: " . Closes 9:45 pm",
                          fontWeight: FontWeight.w400,
                          color: AppColors.grayText),
                    ],
                  ),
                  10.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AppImages.locationSvg),
                      10.wd,
                      SizedBox(
                        width: 280.w,
                        child: Text14(
                            title:
                                "Shop #7 24 B 2 Mahmoud, Mian Mehmood Ali Kasoori Rd, Gulberg III, Lahore",
                            fontWeight: FontWeight.w400,
                            textAlign: TextAlign.justify,
                            color: AppColors.grayText),
                      ),
                    ],
                  ),
                  30.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text20(
                        title: "Nike Shop Store",
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 13.h),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Text14(
                          title: "In Stock",
                          fontWeight: FontWeight.w700,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                  10.ht,
                  Row(
                    children: [
                      SvgPicture.asset(AppImages.timeSvg),
                      10.wd,
                      const Text14(
                        title: "Open",
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0189DF),
                      ),
                      Text14(
                          title: " . Closes 9:45 pm",
                          fontWeight: FontWeight.w400,
                          color: AppColors.grayText),
                    ],
                  ),
                  10.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AppImages.locationSvg),
                      10.wd,
                      SizedBox(
                        width: 280.w,
                        child: Text14(
                            title:
                                "Shop #7 24 B 2 Mahmoud, Mian Mehmood Ali Kasoori Rd, Gulberg III, Lahore",
                            fontWeight: FontWeight.w400,
                            textAlign: TextAlign.justify,
                            color: AppColors.grayText),
                      ),
                    ],
                  ),
                  25.ht,
                  Text16(
                    title: "Store Location",
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor,
                  ),
                  10.ht,
                  Image.asset(AppImages.mapPng)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
