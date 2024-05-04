import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bindings/navigation_menu_controller.dart';
import 'features/home_page/home_page.dart';
import 'utils/constants/colors.dart';
import 'utils/constants/image_strings.dart';
import 'utils/constants/sizes.dart';

class NavigationBottomMenu extends StatelessWidget {
  NavigationBottomMenu({super.key});

  final List<Widget> screens = [
    const HomePage(),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final navigationCntr = Get.put(NavigationMenuController());

    return Obx(
      () => Scaffold(
        bottomNavigationBar: Container(
          height: 80.h,
          width: width,
          // padding: EdgeInsets.all(20.h),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15.r)),color: RColors.rDark),
          child: NavigationBar(
            destinations: [
              NavigationDestination(icon: SvgPicture.asset(homeIconPath , height: iconHeight, width: iconWidth,color: RColors.rHeaderColor,), label: ""),
              NavigationDestination(icon: SvgPicture.asset(userIconPath , height: iconHeight, width: iconWidth,), label: ""),
              NavigationDestination(icon: SvgPicture.asset(walletIconPath, height: iconHeight, width: iconWidth,), label: ""),
              NavigationDestination(icon: SvgPicture.asset(bookmarkIconPath, height: iconHeight, width: iconWidth,), label: ""),
              NavigationDestination(icon: SvgPicture.asset(copyIconPath, height: iconHeight, width: iconWidth,), label: ""),
            ],
            height: 80,
            selectedIndex: navigationCntr.selectedIndex,
            onDestinationSelected: (value) {
              navigationCntr.setSelectedIndex = value;
            },
            // backgroundColor: RColors.rDark,
          ),
        ),
        body: screens[navigationCntr.selectedIndex],
      ),
    );
  }
}
