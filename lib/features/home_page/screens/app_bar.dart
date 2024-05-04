
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/helpers/app_text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){},
          child: CircleAvatar(
            radius: 20.r,
            backgroundImage: AssetImage(profilePicPath),
            // should be a cache network image
          ),
        ),
        Row(
          children: [
            const Icon(Icons.calendar_month, size: 20,),
            const SizedBox(width: 5,),
            Text("ماي", style: arabicAppTextStyle(RColors.rDark, FontWeight.w500, 12.sp),),
            const SizedBox(width: 5,),
            Text("2024", style: arabicAppTextStyle(RColors.rDark, FontWeight.w500, 12.sp),),
            const SizedBox(width: 20,),
            const Icon(Icons.access_time, size: 20,),
            const SizedBox(width: 5,),
            Text("13:00", style: arabicAppTextStyle(RColors.rDark, FontWeight.w500, 12.sp),),
          ],
        ),
        SvgPicture.asset(logoIconPath,),
      ],
    );
  }
}