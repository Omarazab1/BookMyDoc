import 'package:bookmydoc/core/helper/extensions.dart';
import 'package:bookmydoc/core/routing/routes.dart';
import 'package:bookmydoc/core/theming/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class NotHaveAccountText extends StatelessWidget {
  const NotHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: AppStyles.textStyle12DarkBlue,
          ),
          TextSpan(
            text: ' Sign Up',
            style: AppStyles.textStyle12blue,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}