import 'package:animate_do/animate_do.dart';
import 'package:bookmydoc/core/helper/extensions.dart';
import 'package:bookmydoc/core/routing/routes.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/not_have_account.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/sign_up_bloc_listener.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/sign_up_form.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../on_boarding_screen/presentation/widgets/custom_button.dart';
import '../../logic/cubits/register/register_cubit.dart';


class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: FadeInUp(
              delay: const Duration(milliseconds: 500),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: AppStyles.textStyle24blue,
                  ),
                  verticalSpace(8),
                  Text(
                    'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                    style: AppStyles.textStyle12GreyParagraph,
                  ),
                  verticalSpace(36),
                  Column(
                    children: [
                      const SignupForm(),
                      verticalSpace(24),
                      CustomButton(
                        buttonText: "Create Account",
                        onPressed: () {
                          validateThenDoSignup(context);
                        },
                      ),
                      verticalSpace(16),
                      const TermsAndConditionsText(
                        text: 'By signing up, you agree to our',
                        text2: ' Terms of Service',
                        text3: ' and',
                        text4: ' Privacy Policy',
                      ),
                      verticalSpace(24),
                       NotHaveOrHaveAccountText(
                          text1: 'Already have an account?',
                          text2: ' Sign in',
                      onTap: (){
                        context.pushReplacementNamed(Routes.loginScreen);
                      }),
                      const SignupBlocListener(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitSignupStates();
    }
  }
}