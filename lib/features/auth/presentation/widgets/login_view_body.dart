import 'package:animate_do/animate_do.dart';
import 'package:bookmydoc/core/helper/extensions.dart';
import 'package:bookmydoc/core/helper/spacing.dart';
import 'package:bookmydoc/core/theming/app_styles.dart';
import 'package:bookmydoc/features/auth/data/models/login_request_body.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/email_and_password.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/not_have_account.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:bookmydoc/features/on_boarding_screen/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../logic/cubits/login/login_cubit.dart';
import 'bloc_listener_login.dart';

class LoginViewBody extends StatelessWidget {
   const LoginViewBody({super.key});

  //bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        child: FadeInUp(
          delay: const Duration(milliseconds: 500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              verticalSpace(20),
              Text(
                'Welcome Back',
                style: AppStyles.textStyle24blue,
              ),
              verticalSpace(15),
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: AppStyles.textStyle12GreyParagraph,
              ),
              verticalSpace(36),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const EmailAndPassword(),

                  verticalSpace(24),
                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: AppStyles.textStyle12blue,
                      )),
                  verticalSpace(40),
                   CustomButton(
                     buttonText: 'Login',
                     onPressed: (){
                        validateThenDoLogin(context);
                    },
                  ),
                  verticalSpace(28),
                  const TermsAndConditionsText(
                    text: 'By logging, you agree to our',
                    text2: ' Terms & Conditions',
                    text3: ' and',
                    text4: ' Privacy Policy',
                  ),
                  verticalSpace(24),
                  NotHaveAccountText(
                    text1: 'Don\'t have an account?',
                    text2: ' Sign Up',
                    onTap: () {
                      context.pushNamed(Routes.signUpScreen);
                    },
                  ),
                  const BlocListenerLogin(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context)
  {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
          LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
          ));
    }
  }
}
