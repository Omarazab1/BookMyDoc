import 'package:flutter/material.dart';
import '../../../../core/theming/app_styles.dart';

class ListTitlesRow extends StatelessWidget {
  const ListTitlesRow({super.key, required this.text1,});
    final String text1;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1,
        style: AppStyles.textStyle15BlackSemiBold,),
         Text('See All',
        style: AppStyles.textStyle12blue,),
      ],
    );
  }
}
