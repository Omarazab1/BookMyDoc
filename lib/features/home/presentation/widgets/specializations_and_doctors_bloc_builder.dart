import 'package:bookmydoc/features/home/data/models/specializations_response_model.dart';
import 'package:bookmydoc/features/home/presentation/widgets/speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../logic/cubits/home_cubit.dart';
import '../../logic/cubits/home_state.dart';
import 'doctors_list_view.dart';

BlocBuilder<HomeCubit, HomeState<dynamic>> setupSpecializationsAndDoctorsBlocBuilder() {
  return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => current is HomeLoading || current is HomeSuccess || current is HomeError,
      builder: (context, state) {
        return state.maybeWhen(
          homeLoading: (){
            return setupLoadingIndicator();
          },
          homeSuccess: (specializationsResponseModel) {
            var specializationsList = specializationsResponseModel.specializationDataList;
            return setupSuccess(specializationsList);
          },
          homeError: (errorHandler) => const SizedBox.shrink(),
          orElse: (){
            return const SizedBox.shrink();
          },);

      });
}

Expanded setupSuccess(List<SpecializationsData?>? specializationsList) {
  return Expanded(
            child: Column(
              children: [
                SpecialityListView(
                  specializationDataList: specializationsList ?? [],
                ),
                verticalSpace(28),
                DoctorsListView(
                  doctorsList: specializationsList?[0]?.doctorsList ,
                ),
              ],
            ),
          );
}

SizedBox setupLoadingIndicator() {
  return const SizedBox(
            height: 100,
            child: Center(child: CircularProgressIndicator(color: AppColors.kPrimaryColor,),),
          );
}
