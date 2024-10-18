import 'package:bookmydoc/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello Omar !',
            style: AppStyles.nameStyle18,),
            verticalSpace(4),
            Text('How Are you Today?',
              style: AppStyles.textStyle12GreyParagraph,),
          ],
        ),
         CircleAvatar(
           radius: 24.r,
           backgroundColor: AppColors.kMoreLighterGrey,
           child: SvgPicture.asset('assets/images/notification.svg'),
         ),
      ],
    );
  }
}
