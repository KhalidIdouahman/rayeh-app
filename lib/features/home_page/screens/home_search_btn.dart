import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/app_text_style.dart';

Container homeSearchBtn(String txt) {
  return Container(
    width: width * 0.6,
    height: 40.h,
    decoration: BoxDecoration(
      color: RColors.primary,
      borderRadius: BorderRadius.all(Radius.circular(15.r)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
                        textDirection: TextDirection.rtl,
      children: [
        Text(
          txt,
          style: arabicAppTextStyle(RColors.rWhite, FontWeight.w600, 13.sp),
        ),
        SizedBox(width: 10.w),
        SvgPicture.asset(arrowIconPath),
      ],
    ),
  );
}
