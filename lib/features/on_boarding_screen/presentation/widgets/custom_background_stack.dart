
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';

class CustomBackgroundStack extends StatelessWidget {
  const CustomBackgroundStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/Group.png',
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
            ),
          ),
          child: Image.asset(
            'assets/images/Image.png',
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30.h,
          child: Center(
              child: Text('Best Doctor\nAppointment App',
                  textAlign: TextAlign.center,
                  style: AppStyles.textStyle32BlueBold)),
        ),
      ],
    );
  }
}
