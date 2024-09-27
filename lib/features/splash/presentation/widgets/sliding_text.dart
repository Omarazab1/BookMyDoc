import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context , _ )
      {
        return SlideTransition(
          position: slidingAnimation,
          child:  Text('Doctors on Demand, Just for You!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.sp,
              color:Colors.lightBlueAccent,
            ),
          ),
        );
      },

    );
  }
}