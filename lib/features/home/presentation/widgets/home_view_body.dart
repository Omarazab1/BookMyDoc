import 'package:bookmydoc/core/helper/spacing.dart';
import 'package:flutter/material.dart';

import 'doctor_blue_card.dart';
import 'home_top_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTopBar(),
            verticalSpace(10),
            const DoctorBlueCard(),
          ],
        ),
      ),
    );
  }
}
