import 'package:animate_do/animate_do.dart';
import 'package:bookmydoc/core/helper/extensions.dart';
import 'package:bookmydoc/core/helper/spacing.dart';
import 'package:bookmydoc/core/theming/app_styles.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/not_have_account.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:bookmydoc/features/on_boarding_screen/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';


class LoginViewBody extends StatefulWidget {
   const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        child: FadeInUp(
          delay:  const Duration(milliseconds: 500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(20),
              Text('Welcome Back',style: AppStyles.textStyle24blue,),
              verticalSpace(15),
              Text('We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',style: AppStyles.textStyle12GreyParagraph,),
              verticalSpace(36),
              Form(
                  key: formKey,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomTextField(hintText: 'Email',),
                  verticalSpace(18),
                  CustomTextField(
                      hintText: 'Password',
                      isObscureText: isObscureText,
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          isObscureText = !isObscureText;
                        });
                      },
                        child: Icon(
                          isObscureText? Icons.visibility_off :
                          Icons.visibility,
                        )),
                  ),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                      child: Text('Forgot Password?',style: AppStyles.textStyle12blue,)),
                  verticalSpace(40),
                  const CustomButton(buttonText: 'Login'),
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
                    onTap: (){
                      context.pushNamed(Routes.signUpScreen);
                    },
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}