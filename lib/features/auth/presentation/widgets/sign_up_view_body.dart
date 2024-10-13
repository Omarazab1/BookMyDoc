import 'package:bookmydoc/core/helper/extensions.dart';
import 'package:bookmydoc/core/helper/spacing.dart';
import 'package:bookmydoc/core/theming/app_styles.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/not_have_account.dart';
import 'package:bookmydoc/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:bookmydoc/features/on_boarding_screen/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';


class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20),
            Text('Create Account',style: AppStyles.textStyle24blue,),
            verticalSpace(15),
            Text('Sign up now and start exploring all that our app has to offer.'
                ' We\'re excited to welcome you to our community!',style: AppStyles.textStyle12GreyParagraph,),
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
                    verticalSpace(18),
                    const CustomTextField(hintText: 'phone',),

                    verticalSpace(40),
                    const CustomButton(buttonText: 'Sign Up',),
                    verticalSpace(28),
                    const TermsAndConditionsText(
                      text: 'By signing up, you agree to our',
                      text2: ' Terms & Conditions',
                      text3: ' and',
                      text4: ' Privacy Policy',
                    ),
                    verticalSpace(24),
                     NotHaveAccountText(
                      text1: 'Already have an account?',
                      text2: ' Sign In' , onTap: (){
                      context.pushReplacementNamed(Routes.loginScreen);
                    },
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
