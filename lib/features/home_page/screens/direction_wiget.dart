import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/image_strings.dart';
import 'home_text_field.dart';

class DirectionWidget extends StatelessWidget {
  final TextEditingController firstTxtFldCntr;
  final TextEditingController secondTxtFldCntr;
  final String firstHintTxt;
  final String secondHintTxt;

  const DirectionWidget({
    super.key,
    required this.firstHintTxt,
    required this.firstTxtFldCntr,
    required this.secondTxtFldCntr,
    required this.secondHintTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomeTextField(txtFldCntr: firstTxtFldCntr, hintTxt: firstHintTxt),
        SizedBox(width: 15.w),
        SvgPicture.asset(arrowIconPath),
        SizedBox(width: 15.w),
        HomeTextField(txtFldCntr: secondTxtFldCntr, hintTxt: secondHintTxt),
      ],
    );
  }
}
