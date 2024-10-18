import 'package:bookmydoc/core/helper/spacing.dart';
import 'package:bookmydoc/features/home/presentation/widgets/doctors_speciality_row.dart';
import 'package:bookmydoc/features/home/presentation/widgets/speciality_list_view.dart';
import 'package:flutter/material.dart';

import 'doctor_blue_card.dart';
import 'doctors_list_view.dart';
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
            verticalSpace(24),
            const ListTitlesRow(
              text1: 'Doctors Speciality',
            ),
            verticalSpace(12),
            const SpecialityListView(),
            verticalSpace(24),
            const ListTitlesRow(text1: 'Recommended Doctors'),
            verticalSpace(12),
            const DoctorsListView(),
          ],
        ),
      ),
    );
  }
}
