import 'package:bookmydoc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key, required this.text, required this.text2, required this.text3, required this.text4});
 final String text ;
 final String text2 ;
 final String text3 ;
 final String text4 ;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text:text ,
            style: AppStyles.textStyle12GreyParagraph,
          ),
          TextSpan(
            text: text2,
            style: AppStyles.textStyle12DarkBlue,
          ),
          TextSpan(
            text:text3 ,
            style: AppStyles.textStyle12GreyParagraph.copyWith(height: 1.5),
          ),
          TextSpan(
            text: text4,
            style: AppStyles.textStyle12DarkBlue,
          ),
        ],
      ),
    );
  }
}
