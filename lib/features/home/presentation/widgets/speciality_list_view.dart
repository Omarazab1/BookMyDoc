import 'package:bookmydoc/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class SpecialityListView extends StatelessWidget {
  const SpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          itemBuilder: (context, index) {
            return Container(
             padding: EdgeInsetsDirectional.only(
               start: index == 0 ?0 : 24.w,
             ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: AppColors.kLightBlue,
                    child: Image.asset('assets/images/manDoctor.png',
                    height: 40.h,
                    width: 40.w,),
                  ),
                  verticalSpace(8),
                  const Text('General'),
                ],
              ),
            );
          }
      ),
    );
  }
}
