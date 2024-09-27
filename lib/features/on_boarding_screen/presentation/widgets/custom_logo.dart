import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_styles.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/logo.svg',width:45.w ,height: 45.w,),
         SizedBox(width: 10.w,),
        Text('BookMyDoc',style: AppStyles.textStyle24Black700),
      ],
    );
  }
}
