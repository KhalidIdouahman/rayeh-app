import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/app_text_style.dart';

class HomeTextField extends StatelessWidget {
  final TextEditingController txtFldCntr;
  final String hintTxt;
  const HomeTextField({super.key, required this.txtFldCntr, required this.hintTxt,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 34.h,
      child: TextField(
        controller: txtFldCntr,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.bottom,
        cursorColor: RColors.primary,
        cursorHeight: 20.h,
        style: 
              arabicAppTextStyle(RColors.primary, FontWeight.w500, 12.sp,),
        decoration: InputDecoration(
          filled: true,
          fillColor: RColors.primary.withOpacity(0.1),
          hintText: hintTxt,
          // labelStyle:
          //     arabicAppTextStyle(RColors.primary, FontWeight.w500, 12.sp,),
          hintStyle:
              arabicAppTextStyle(RColors.primary, FontWeight.w500, 12.sp,),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: RColors.primary),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: RColors.primary),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: RColors.primary),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: RColors.primary),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
        ),
      ),
    );
  }
}
