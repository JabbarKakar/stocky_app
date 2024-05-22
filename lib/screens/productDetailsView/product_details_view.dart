import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stocki_app/appConstants/app_colors.dart';
import 'package:stocki_app/appConstants/app_constants.dart';
import 'package:stocki_app/appConstants/app_images.dart';
import 'package:stocki_app/appConstants/text.dart';
import 'package:stocki_app/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;

class ProductDetailsView extends StatefulWidget {
  final String title;
  final String productID;
  const ProductDetailsView({super.key, required this.title, required this.productID});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  int currentIndex = -1;

  List<String> sizeList = ["7","7.5","8", "8.5", "9", "9.5"];

  @override
  void initState() {
    // TODO: implement initState
    getZaraDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
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
                        onTap: (){
                          showMyDialog(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 13.h),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(AppImages.nikeStoreSvg),
                              6.wd,
                              Text14(
                                title: "Nike Store",
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
                            title: "Nike Adapt BB Legacy DISC Rebirth",
                            color: AppColors.primaryColor,
                          )),
                      Text24(
                        title: "\$78.00",
                        fontWeight: FontWeight.w700,
                      )
                    ],
                  ),
                  20.ht,
                  Text14(
                    title:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
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
                      itemCount: sizeList.length,
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
                                        : AppColors.textFormFieldColor,
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: Center(
                                    child: Text20(
                                  title: sizeList[index],
                                  fontWeight: FontWeight.w600,
                                  color: index == currentIndex
                                      ? AppColors.whiteColor
                                      : AppColors.primaryColor,
                                )),
                              ),
                              index == currentIndex ?
                              Positioned(
                                right: 5,
                                top: -1.5,
                                child: Container(
                                  height: 15.h,
                                  width: 15.h,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    shape: BoxShape.circle
                                  ),
                                  child: Center(child: Icon(CupertinoIcons.check_mark_circled, size: 10.sp, color: AppColors.primaryColor,)),
                                ),
                              ) : const SizedBox.shrink()
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
                      Text14(title: "Open", fontWeight: FontWeight.w400, color: Color(0xff0189DF),),
                      Text14(title: " . Closes 9:45 pm", fontWeight: FontWeight.w400, color: AppColors.grayText,),
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
                        child: Text14(title: "Shop #7 24 B 2 Mahmoud, Mian Mehmood Ali Kasoori Rd, Gulberg III, Lahore",
                          fontWeight: FontWeight.w400, textAlign: TextAlign.justify, color: AppColors.grayText),
                      ),
                    ],
                  ),
                  20.ht,
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 13.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: AppColors.primaryColor)
                    ),
                    child: const Center(child: Text14(title: "Buy Online", fontWeight: FontWeight.w700,)),
                  ),
                  20.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text16(title: "Store Location", fontWeight: FontWeight.w500, color: AppColors.blackColor,),
                      GestureDetector(
                          onTap: (){
                            showMyDialog(context);
                          },
                          child: Text14(title: "Search Other Stores", fontWeight: FontWeight.w400, color: AppColors.productDetailsText,)),
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
                        border: Border.all(color: AppColors.primaryColor)
                    ),
                    child: const Center(child: Text14(title: "Navigate Now", fontWeight: FontWeight.w700,)),
                  ),

                  40.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text16(title: "Reviews", fontWeight: FontWeight.w500, color: AppColors.blackColor,),
                      Text14(title: "12 Reviews", fontWeight: FontWeight.w400, color: AppColors.productDetailsText,),
                    ],
                  ),
                  25.ht,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 20.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.borderColor),
                      borderRadius: BorderRadius.circular(20.r)
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50.h,
                                  width: 50.h,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle
                                  ),
                                  child: Image.asset(AppImages.reviewPng),
                                ),
                                10.wd,
                                Text16(title: "Jaime Martinez", fontWeight: FontWeight.w400,)
                            
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 18.sp,),
                                3.wd,
                                Icon(Icons.star, color: Colors.yellow, size: 18.sp,),
                                3.wd,
                                Icon(Icons.star, color: Colors.yellow, size: 18.sp,),
                                3.wd,
                                Icon(Icons.star, color: Colors.yellow, size: 18.sp,),
                                3.wd,
                                Icon(Icons.star, color: Colors.yellow, size: 18.sp,),
                              ],
                            )
                          ],
                        ),
                        20.ht,
                        Text14(title: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, ",
                        fontWeight: FontWeight.w400, color: AppColors.grayText, textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                  15.ht,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 20.h),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(20.r)
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50.h,
                                  width: 50.h,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle
                                  ),
                                  child: Image.asset(AppImages.reviewPng),
                                ),
                                10.wd,
                                Text16(title: "Jaime Martinez", fontWeight: FontWeight.w400,)

                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 18.sp,),
                                3.wd,
                                Icon(Icons.star, color: Colors.yellow, size: 18.sp,),
                                3.wd,
                                Icon(Icons.star, color: Colors.yellow, size: 18.sp,),
                                3.wd,
                                Icon(Icons.star, color: Colors.yellow, size: 18.sp,),
                                3.wd,
                                Icon(Icons.star, color: Colors.yellow, size: 18.sp,),
                              ],
                            )
                          ],
                        ),
                        20.ht,
                        Text14(title: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, ",
                          fontWeight: FontWeight.w400, color: AppColors.grayText, textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                  50.ht,
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: const Center(
                        child: Text20(title: "Reserve Now", fontWeight: FontWeight.w500,),
                      ),
                    ),
                  ),
                  40.ht


                ],
              ),
            )
          ],
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
                borderRadius: BorderRadius.circular(20.r)
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text14(title: 'Enter Postcode', color: AppColors.blackColor, fontWeight: FontWeight.w500,),
                   10.ht,
                  CustomTextFormField(obscureText: false, hintText: "Enter the  Postcode",),
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
                      Text14(title: "Open", fontWeight: FontWeight.w400, color: Color(0xff0189DF),),
                      Text14(title: " . Closes 9:45 pm", fontWeight: FontWeight.w400, color: AppColors.grayText),
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
                        child: Text14(title: "Shop #7 24 B 2 Mahmoud, Mian Mehmood Ali Kasoori Rd, Gulberg III, Lahore",
                          fontWeight: FontWeight.w400, textAlign: TextAlign.justify, color: AppColors.grayText),
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
                      SvgPicture.asset(AppImages.timeSvg, color: Colors.red,),
                      10.wd,
                      const Text14(title: "Closed", fontWeight: FontWeight.w400, color: Color(
                          0xffff0000),),
                      Text14(title: " . Closes 9:45 pm", fontWeight: FontWeight.w400, color: AppColors.grayText),
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
                        child: Text14(title: "Shop #7 24 B 2 Mahmoud, Mian Mehmood Ali Kasoori Rd, Gulberg III, Lahore",
                          fontWeight: FontWeight.w400, textAlign: TextAlign.justify, color: AppColors.grayText),
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
                      const Text14(title: "Open", fontWeight: FontWeight.w400, color: Color(0xff0189DF),),
                      Text14(title: " . Closes 9:45 pm", fontWeight: FontWeight.w400, color: AppColors.grayText),
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
                        child: Text14(title: "Shop #7 24 B 2 Mahmoud, Mian Mehmood Ali Kasoori Rd, Gulberg III, Lahore",
                          fontWeight: FontWeight.w400, textAlign: TextAlign.justify, color: AppColors.grayText),
                      ),
                    ],
                  ),
                  25.ht,
                  Text16(title: "Store Location", fontWeight: FontWeight.w500, color: AppColors.blackColor,),
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


  Future<void> getZaraDetails()async {
    var headers = {
      'Cookie': 'IDROSTA=e1700c405cb6:2a189477980cbbd110a5ae0b2; ITXDEVICEID=b8317f2aa097c2ae592c3591dcd63967; ITXSESSIONID=cc297fd4ccc3e78964e03dceb1dac2a0; _abck=18948336B2B74BE9BA57A397099612E7~-1~YAAQT54QAjN04JyPAQAA44HMoAuWDxL0HzRDINwtA2MIAT+tp2JPwTP6jcx2OTJMie/ZFqt9NeBM4XJddV710cp6IBWL5k75aWkS1jeV6bwhWxYXn+2CZ6IfCdHFhmI79Jwo+jIkxy7nZaBq6BBxA8utwabudI37KW2vkBbzXotX0CW/8nVQg/H0zv2gytE33vzgs3prXT85u+StW5L3fkGxi/DqIvrqD8IWBJaA/4uEGN09Vk2sxHOuGeUo5lHUlG4CSvqQM9vCb7niPIMaBsbpshcESBpufT/79hl0p+9wclMxfm8A0qruo/WOgNwCAehhGl7wIbbdSqIPoIjEitt2XBvUKxZ255BndZyZ6oeJkQUpzmgSKPsUdyRK0eqTBJqlmh0=~-1~-1~-1; ak_bmsc=54BF01616E542479E49A24FF70694A99~000000000000000000000000000000~YAAQT54QAjR04JyPAQAA5IHMoBchC58lTCDE2350ASi3QWVKd5QV97BnKdxtmqkXp1oQG47wCWauNHf5saSHoSsX2e7N0KsgfjuccOu37abNMuwrkG1344HIIAfU4e74V+2LHF+rAqbpwIGWJ3dhKaZdSInO6mfV02LYB1G6Epl4207sgh7AB5U9Nf+d+SK1tvYpACzGtoVXkrx7LBav6/StNxnqfnqWAa5lKi23QPnVL9obk7T8RGimkb9MejgegslgkHt6av13+gaArMFku7AxyhMgiIhkXolqCuYml6qv8aDs2lFlo7BnLKdxyI3CF+b2YGQn8M59RYuxZHNHUIwq3itqrtVSE02EafpV1kI3Lu4qLJ2IFyqiVg==; bm_sv=36A9E72EF7D6656CD8F496292FD4F3EB~YAAQNp4QAmfv45mPAQAARP3doBd9tmiQYOLmBqZVKsKueagG52WsG5ZIE5pD02GJbBrLxQSKOHSHMvnNtvZg0okJOXjXwI44WxNasTPzNR+OHFhvlUon1ulnD9ZTBkSPcxN/ZIvwiHE0jvx8XLxpGcuSpMKidDyIqiamuEzFdKiMxz2n+9yycjd9HFbqcizB5WJIiDJEEyrES2SS9LoCrLDeP7AEY7trNSx1+v8aJJNVUWEOdvhBBM95Lynn5g==~1; bm_sz=CB7D2F519EC07DFACA810B54A21C6838~YAAQT54QAjV04JyPAQAA5IHMoBeD9ONCztR7Rz2QEDa9lozCFmk9upeDyNY1U5Gc6t3p+hk0qSD2r4ymmpnxDwOldrr9adqSjC4uk5ms4KfXGVZ9q9z25LEt5Prrub9mC3ZC/EP8lmrRcJl/bLzXVkLVlUNSXpXSQ3tTmfHXtOvsKiGZUAfTqoR33XaCZaGZWgQdSKs+QuMa3r6VlmtqItShLxsQiIq1nrZivzqlXM84aoXMSKW3FQABJeixLYsuMTRtiledtyeonKjBSN6exfzgC9FOvMj17VTX9dQGGNyzY7+YrIf+9ABngiYtUI76ZxVoZxUXq1UlOOOn/EemsRdd6wQBtJW/j+HVD28=~3294257~3687475; 826b75e46a856af63aa6a715b40616e7=931c5ec9ff499fbdeb7789c95e3cc0dd; TS0122c9b6=019ceafdc3414eb4d7cbfd2da82bfad424477346c1b7ba68c1a4aa875bf7a26af6e23c1c4ba751c580984aed34c59db4bd3f438819'
    };
    var request = http.Request('GET', Uri.parse('https://www.zara.com/uk/en/z1975-straight-fit-high-waist-full-length-jeans-p08228029.html?v1=48409707&ajax=true'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }


  }








}
