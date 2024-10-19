import 'package:bookmydoc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/app_colors.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;

  const SpecialityListViewItem({
    super.key, this.specializationsData, required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ?0 : 24.w,
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
           Text(specializationsData?.name ?? 'specialization', style: const TextStyle(fontSize: 14),),
        ],
      ),
    );
  }
}