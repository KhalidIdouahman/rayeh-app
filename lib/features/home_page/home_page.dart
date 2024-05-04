import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/texts.dart';
import '../../utils/helpers/app_text_style.dart';
import 'controllers/service_tab_controller.dart';
import 'screens/app_bar.dart';
import 'screens/direction_wiget.dart';
import 'screens/home_search_btn.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final tabCntr = TabController(length: 2, vsync: this);
    final serviceTabCntr = Get.put(ServiceTabController());
    final List<String> tabValues = [serviceRequester, serviceOffer];

    final TextEditingController firstTxtFld = TextEditingController();
    final TextEditingController secondTxtFld = TextEditingController();

// this widget is necessary to let the tab bar works
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // this to avoid the overflow issue when the keyboard is appearing without making the page scrollable.
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: height * 0.4,
                width: width,
                padding: EdgeInsets.only(right: 15.h, left: 15.w, top: 80.h),
                decoration: BoxDecoration(
                  color: RColors.rHeaderColor.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.r),
                    bottomRight: Radius.circular(35.r),
                  ),
                ),
                child: Column(
                  children: [
                    const CustomAppBar(),
                    SizedBox(height: 30.h),
                    Container(
                      height: 40.h,
                      width: width * 0.6,
                      decoration: BoxDecoration(
                        border: Border.all(color: RColors.primary, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(15.r)),
                      ),
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        controller: tabCntr,
                        indicator: BoxDecoration(
                          // border: Border(),
                          color: RColors.primary,
                          borderRadius: BorderRadius.all(Radius.circular(13.r)),
                        ),
                        labelColor: RColors.rWhite,
                        unselectedLabelColor: RColors.primary,
                        onTap: (value) {
                          serviceTabCntr.setSelectedService = value;
                        },
                        tabs: [
                          Text(
                            tabValues[0],
                            style: arabicAppTextStyle(
                              null,
                              FontWeight.w500,
                              12.sp,
                            ),
                          ),
                          Text(
                            tabValues[1],
                            style: arabicAppTextStyle(
                              null,
                              FontWeight.w500,
                              12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        SizedBox(width: 50.w),
                        Icon(Icons.location_on, size: 15.h),
                        SizedBox(width: 5.w),
                        Text(
                          textDirection: TextDirection.rtl,
                          chooseLocation,
                          style: arabicAppTextStyle(
                            RColors.rDark,
                            FontWeight.w500,
                            12.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    DirectionWidget(
                      firstTxtFldCntr: firstTxtFld,
                      firstHintTxt: from,
                      secondTxtFldCntr: secondTxtFld,
                      secondHintTxt: to,
                    ),
                    SizedBox(height: 20.h),
                    homeSearchBtn(search),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  SizedBox(width: 25.w),
                  Text(
                    textDirection: TextDirection.rtl,
                    promotions,
                    style: arabicAppTextStyle(
                      RColors.rDark,
                      FontWeight.w600,
                      12.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.47,
                child: ListView.builder(
                  itemCount: promotionList.length,
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 20.h),
                      child: Image.asset(promotionList[i]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
