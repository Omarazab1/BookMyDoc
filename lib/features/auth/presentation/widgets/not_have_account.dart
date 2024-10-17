
import 'package:bookmydoc/core/theming/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class NotHaveOrHaveAccountText extends StatelessWidget {
  const NotHaveOrHaveAccountText({super.key, required this.text1, required this.text2, this.onTap});
  final String text1;
  final String text2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: AppStyles.textStyle12DarkBlue,
          ),
          TextSpan(
            text: text2,
            style: AppStyles.textStyle12blue,
            recognizer: TapGestureRecognizer()..onTap = onTap,

          ),
        ],
      ),
    );
  }
}
