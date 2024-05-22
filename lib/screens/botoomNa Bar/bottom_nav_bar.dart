import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:stocki_app/screens/homeView/home_view.dart';

import '../../appConstants/app_colors.dart';
import '../../appConstants/app_images.dart';
import '../reservationView/reservation_view.dart';
import '../searchView/search_view.dart';
import '../settingView/setting_view.dart';

// class BottomNavigationBarView extends StatefulWidget {
//   int selectedIndex;
//   BottomNavigationBarView({super.key, required this.selectedIndex});
//
//   @override
//   BottomNavigationBarViewState createState() =>
//       BottomNavigationBarViewState();
// }
//
// class BottomNavigationBarViewState extends State<BottomNavigationBarView> {
//   static final List<Widget> _widgetOptions = <Widget>[
//     const HomeView(),
//     const SearchView(),
//     const ReservationView(),
//     const SettingView(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return
//
//       Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(widget.selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: AppColors.whiteColor,
//         type: BottomNavigationBarType.fixed,
//         currentIndex: widget.selectedIndex,
//         onTap: (int index) {
//           setState(() {
//             widget.selectedIndex = index;
//           });
//         },
//         elevation: 5,
//         selectedLabelStyle: GoogleFonts.poppins(
//             fontSize: 12.sp,
//             color: Colors.red,
//             fontWeight: FontWeight.w500
//         ),
//         unselectedLabelStyle: GoogleFonts.poppins(
//             fontSize: 12.sp,
//             // color: Colors.green,
//             fontWeight: FontWeight.w500
//         ),
//
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               AppImages.homeSvg,
//               color: widget.selectedIndex == 0 ? AppColors.primaryColor : null,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               AppImages.searchSvg,
//               color: widget.selectedIndex == 1 ? AppColors.primaryColor : null,
//             ),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               AppImages.reservationSvg,
//               color: widget.selectedIndex == 2 ? AppColors.primaryColor : null,
//             ),
//             label: 'Reservations',
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               AppImages.settingSvg,
//               color: widget.selectedIndex == 3 ? AppColors.primaryColor : null,
//             ),
//             label: 'Settings',
//           ),
//         ],
//       ),
//     );
//   }
// }





class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomeView(),
          SearchView(),
          ReservationView(),
          SettingView(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        // margin: EdgeInsets.only(bottom: 0.h,),
        // padding: EdgeInsets.only(top: 10.h),
        decoration:  BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),)
        ),
        child: TabBar(
          labelPadding: EdgeInsets.zero,
          indicatorPadding: EdgeInsets.only(bottom: 3),
          padding: EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 10),
          dividerColor: Colors.transparent,
          labelColor: AppColors.primaryColor,
          labelStyle: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w600),
          unselectedLabelColor: AppColors.primaryColor,
          unselectedLabelStyle: TextStyle(
              fontSize: 9,
              color: AppColors.blackColor,
              fontWeight: FontWeight.w500),
          indicator: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: AppColors.primaryColor,
                    width: 2.5.h,
                    style: BorderStyle.solid)),
          ),
          controller: _tabController,
          indicatorColor: AppColors.primaryColor,
          tabs: [
            Tab(
              icon: SvgPicture.asset(
                AppImages.homeSvg,
              ),
              text: "Home",
            ),
            Tab(
              icon: SvgPicture.asset(AppImages.searchSvg),
              text: "Search",
            ),
            Tab(
              icon: SvgPicture.asset(AppImages.reservationSvg),
              text: "Reservations",
            ),
            Tab(
              icon: SvgPicture.asset(AppImages.settingSvg),
              text: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // const MyApp(Key key) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     PersistentTabController _controller;
//
//     _controller = PersistentTabController(initialIndex: 0);
//     return PersistentTabView(
//
//       context,
//       controller: _controller,
//       screens: _buildScreens(),
//       items: _navBarsItems(),
//       confineInSafeArea: true,
//       backgroundColor: Colors.white,
//       handleAndroidBackButtonPress: true,
//       resizeToAvoidBottomInset: true,
//       stateManagement: true,
//       hideNavigationBarWhenKeyboardShows: true,
//       decoration: NavBarDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         colorBehindNavBar: Colors.white,
//       ),
//       popAllScreensOnTapOfSelectedTab: true,
//       popActionScreens: PopActionScreensType.all,
//       itemAnimationProperties: ItemAnimationProperties(
//         duration: Duration(milliseconds: 200),
//         curve: Curves.ease,
//       ),
//       screenTransitionAnimation: ScreenTransitionAnimation(
//         animateTabTransition: true,
//         curve: Curves.ease,
//         duration: Duration(milliseconds: 200),
//       ),
//       navBarStyle: NavBarStyle.style14,
//
//     );
//   }
//
//   List<PersistentBottomNavBarItem> _navBarsItems() {
//     return [
//       PersistentBottomNavBarItem(iconSize: 34,
//         icon: SizedBox(
//           width: 34,
//           height: 34,
//           child: SvgPicture.asset(
//             AppImages.homeSvg,
//
//           ),
//         ),
//         title: ("Home"),
//         activeColorPrimary: AppColors.primaryColor,
//         inactiveColorPrimary: AppColors.primaryColor,
//       ),
//       PersistentBottomNavBarItem(
//         icon: SizedBox(
//           width: 34,
//           height: 34,
//           child: SvgPicture.asset(
//             AppImages.searchSvg,
//
//           ),
//         ),
//         title: ("Search"),
//         activeColorPrimary: AppColors.primaryColor,
//         inactiveColorPrimary: AppColors.primaryColor,
//       ),
//       PersistentBottomNavBarItem(
//         icon: SizedBox(
//           height: 34.h,
//           width: 34.h,
//           child: SvgPicture.asset(
//             AppImages.reservationSvg,
//           ),
//         ),
//         title: ("Reservation"),
//         activeColorPrimary: AppColors.primaryColor,
//         inactiveColorPrimary: AppColors.primaryColor,
//       ),
//       PersistentBottomNavBarItem(
//         icon: SizedBox(
//           width: 34,
//           height: 34,
//           child: SvgPicture.asset(
//             AppImages.settingSvg,
//
//           ),
//         ),
//         title: ("Settings"),
//         activeColorPrimary: AppColors.primaryColor,
//         inactiveColorPrimary: AppColors.primaryColor,
//       ),
//     ];
//   }
//
//   List<Widget> _buildScreens() {
//     return [
//       HomeView(),
//       SearchView(),
//       ReservationView(),
//       SettingView(),
//     ];
//   }
// }
