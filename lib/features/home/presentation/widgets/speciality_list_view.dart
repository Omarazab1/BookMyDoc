
import 'package:bookmydoc/features/home/presentation/widgets/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/specializations_response_model.dart';



class SpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const SpecialityListView({super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100.h,
      child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: specializationDataList.length,
         itemBuilder: (context, index) {
           return  SpecialityListViewItem(
             itemIndex: index ,
             specializationsData: specializationDataList[index],
           );
         }
              ),
    );
  }
}


