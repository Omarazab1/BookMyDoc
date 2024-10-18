import 'package:bookmydoc/core/helper/spacing.dart';
import 'package:bookmydoc/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_styles.dart';

class DoctorBlueCard extends StatelessWidget {
  const DoctorBlueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 170.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w , vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/Background.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Book and\nschedule with\nnearest doctor',
                textAlign: TextAlign.start,
                style: AppStyles.textStyle13White,),
                verticalSpace(16),
                ElevatedButton(
                    onPressed: (){},
                    style:  ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(Colors.white),
                      shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.r)),
                        ),
                      ),
                    ),
                    child:   Text('Find Nearby',
                    style: TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 12.sp
                    )),
                )],
              
            ),
          ),
          Positioned(
            right: 16.w,
            top: 0,
            child: Image.asset('assets/images/doctorImg.png',
            height: 200.h,),
          ),
        ],
      ),
    );
  }
}
