import 'package:bookmydoc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: AppStyles.textStyle12GreyParagraph,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: AppStyles.textStyle12DarkBlue,
          ),
          TextSpan(
            text: ' and',
            style: AppStyles.textStyle12GreyParagraph.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: AppStyles.textStyle12DarkBlue,
          ),
        ],
      ),
    );
  }
}