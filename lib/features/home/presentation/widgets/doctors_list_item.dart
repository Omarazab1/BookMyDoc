import 'package:bookmydoc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/app_styles.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({
    super.key, this.doctorsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.asset('assets/images/docList.png',
              width: 110.w,
              height: 120.h,
              fit:  BoxFit.cover,),

          ),
          horizontalSpace(16),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(doctorsModel?.name ?? 'Name',
                    style: AppStyles.textStyle15BlackSemiBold,),
                  verticalSpace(5),
                  Text('${doctorsModel?.degree} | ${doctorsModel?.phone}',
                    style: AppStyles.textStyle12GreyParagraph,),
                  verticalSpace(5),
                  Text(doctorsModel?.email ?? 'Email',
                    style: AppStyles.textStyle12GreyParagraph,),
                ],
              )),
        ],
      ),
    );
  }
}