import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:get/route_manager.dart';

import 'package:stocki_app/appConstants/app_colors.dart';
import 'package:stocki_app/appConstants/app_constants.dart';
import 'package:stocki_app/appConstants/app_images.dart';
import 'package:stocki_app/screens/productDetailsView/product_details_view.dart';
import '../../appConstants/text.dart';
import 'search.dart';


class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List items = [];
  Search storesSearch = Search();
  
  void getSearchResults(){
    final getItems = storesSearch.getItems();                       // get items matching the search input and filters
    getItems.then((newItems){setState(() {items = newItems;});});   // updates the state with the new items
  }
  // updates the stored search input when the user searched something
  void changeSearchInput(String? input) {setState(() {storesSearch.searchInput = input;});}
  void changeSizesParam(List sizes) {setState(() {storesSearch.sizesParam = sizes;});}
  void changeColorsParam(List colors) {setState(() {storesSearch.colorsParam = colors;});}
  void changeSectionParam(List section) {setState(() {storesSearch.sectionParam = section;});}

  MultiSelectDialogField changeSearchParamWidget(String paramName, paramValue, Map options, changeParamFunction){
    return MultiSelectDialogField(
      title: Text(paramName),
      buttonText: Text(paramName),
      items: [for (String option in options.keys) MultiSelectItem(option, options[option])],
      initialValue: paramValue,
      listType: MultiSelectListType.CHIP,
      onConfirm: changeParamFunction,
      searchable: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            // Green box containing search bar and filters button
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
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 04.w, vertical: 2.h),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.searchFieldColor.withOpacity(.25),
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(color: AppColors.whiteColor)),
                      
                      // search input field
                      child: TextFormField(
                        onFieldSubmitted: (String input){
                          FocusScope.of(context).requestFocus(FocusNode());
                          changeSearchInput(input);
                          getSearchResults();
                        },
                        cursorColor: AppColors.whiteColor,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: AppColors.whiteColor, fontSize: 18.sp, fontWeight: FontWeight.w400,),
                          prefixIcon: SizedBox(height: 20.h, width: 20.h, child: Center(child: SvgPicture.asset(AppImages.searchSvg2)))
                        ),
                      ), 
                    ),
                  ),

                  // filters button
                  SizedBox(width: 8.w,),
                  InkWell(
                    onTap: (){showMyDialog( context);},         // calls showMyDialog to display when the filter button is pressed
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.h),
                      decoration: BoxDecoration(
                          color: AppColors.searchFieldColor.withOpacity(.25),
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(color: AppColors.whiteColor)),
                      child: SvgPicture.asset(AppImages.filterSvg),
                    ),
                  ),
                ],
              ),
            ),
            20.ht,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text18(title: "Search Results - ${storesSearch.searchInput}", fontWeight: FontWeight.w600,),
                      Text12(title: '${items.length.toString()} Products', fontWeight: FontWeight.w400, color: AppColors.grayText,),
                    ],
                  ),
                  10.ht,
                  SizedBox(
                    height: 600.h,
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: items.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 10.h,
                          childAspectRatio: .83
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            Get.to(() => ProductDetailsView(title: items[index].name, url: items[index].link));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(items[index].image),
                                fit: BoxFit.cover,
                                opacity: 0.7
                              ),
                              boxShadow: const [
                                BoxShadow(color: Color.fromARGB(255, 121, 121, 121),),
                                BoxShadow(color:  Color.fromARGB(255, 207, 207, 207), spreadRadius: -30.0, blurRadius: 30.0,)
                              ],
                              borderRadius: BorderRadius.circular(5.r)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SvgPicture.asset(AppImages.favSvg)
                                ),
                                SizedBox(height: 4.h,),
                                Text12(title: items[index].name, fontWeight: FontWeight.w600,),
                                SizedBox(height: 3.h,),
                                Text12(title: '£${items[index].price.toString()}', fontWeight: FontWeight.w400,),
                              ],
                            ),
                          ),
                        );
                      },),

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void showMyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.whiteColor,
          insetPadding: EdgeInsets.symmetric(horizontal: 35.w),
          // contentPadding: EdgeInsets.all(15),
          child: Container(
            height: 455.h,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text18(title: 'Filters', color: AppColors.blackColor, fontWeight: FontWeight.w600,),
                18.ht,
                
                // Search param select
                changeSearchParamWidget("Section", storesSearch.sectionParam, {'WOMAN':'Women', 'MAN':'Men', 'KID':'Kids'}, changeSectionParam), 5.ht,    // section select
                changeSearchParamWidget("Size", storesSearch.sizesParam, storesSearch.sizeFacet, changeSizesParam), 5.ht,            // size select
                changeSearchParamWidget("Color", storesSearch.colorsParam, storesSearch.colorFacet, changeColorsParam), 5.ht,        // color select
                StatefulBuilder(builder: (context, state){                                                                           // price select
                  return RangeSlider(
                    values: storesSearch.priceRangeParam,
                    min: storesSearch.resultsPriceRange.start,
                    max: storesSearch.resultsPriceRange.end,
                    divisions: (storesSearch.resultsPriceRange.end - storesSearch.resultsPriceRange.start + 1).toInt(),
                    labels: RangeLabels(
                      storesSearch.priceRangeParam.start.toInt().toString(),
                      storesSearch.priceRangeParam.end.toInt().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      state(() {storesSearch.priceRangeParam = values;});
                    }
                  );
                }),
                30.ht,

                // submit button
                InkWell(
                  onTap: (){Navigator.of(context).pop(); getSearchResults();},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Center(
                      child: Text18(title: "Apply Now", fontWeight: FontWeight.w500, color: AppColors.whiteColor,),
                    ),
                  )
                )
              ],
            ),
          ),
        );
      },
    );
  }
}



