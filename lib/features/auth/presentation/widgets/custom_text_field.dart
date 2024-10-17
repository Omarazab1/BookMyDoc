import 'package:bookmydoc/core/theming/app_colors.dart';
import 'package:bookmydoc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  const CustomTextField({super.key, this.contentPadding, this.focusedBorder, this.enabledBorder, this.inputTextStyle, this.hintStyle, required this.hintText, this.isObscureText, this.suffixIcon, this.backgroundColor, this.controller, required this.validator, this.errorBorder, this.focusedErrorBorder});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration:  InputDecoration(
        isDense: true, // as a default padding for each text field
        contentPadding: contentPadding?? EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        focusedBorder: focusedBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide:  const BorderSide(
              color: AppColors.kPrimaryColor,
              width: 1.3),
        ),
        enabledBorder: enabledBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide:  const BorderSide(
              color: AppColors.kLighterGreyColor,
              width: 1.3,
          ),
        ),
        errorBorder: errorBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide:  const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
        focusedErrorBorder: errorBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide:  const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
        hintStyle: AppStyles.textStyle14LightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? AppColors.kGreyForm,
        filled: true,
        ),

      obscureText: isObscureText ?? false,
      style: AppStyles.textStyle14DarkBlueMedium,
      validator: (value){
        return validator(value);
      },
      );
  }
}
