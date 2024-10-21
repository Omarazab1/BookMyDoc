
import 'package:bookmydoc/core/networking/api_error_handler.dart';
import 'package:bookmydoc/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState<T> with _$HomeState<T> {
   //specializations states
   const factory HomeState.specializationsInitial() = _SpecializationsInitial;
   const factory HomeState.specializationsLoading() = SpecializationsLoading;
   const factory HomeState.specializationsSuccess(List<SpecializationsData?>? specializationDataList) = SpecializationsSuccess;
   const factory HomeState.specializationsError(ErrorHandler errorHandler) = SpecializationsError;


   //doctors states
   const factory HomeState.doctorsSuccess(List<Doctors?>? doctorDataList) = DoctorsSuccess;
   const factory HomeState.doctorsError(ErrorHandler errorHandler) = DoctorsError;
}