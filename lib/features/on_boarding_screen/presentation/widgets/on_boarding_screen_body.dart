
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../auth/presentation/sign_in/login_view.dart';
import 'custom_background_stack.dart';
import 'custom_button.dart';
import 'custom_logo.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.w),
          child: Column(
            children: [
              const CustomLogo(),
              SizedBox(
                height: 15.h,
              ),
              const CustomBackgroundStack(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with BookMyDoc to get a new experience.',
                      style: AppStyles.textStyle12GreyParagraph,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20,),
                    CustomButton(buttonText: 'Get Started',onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()));
                    },),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
