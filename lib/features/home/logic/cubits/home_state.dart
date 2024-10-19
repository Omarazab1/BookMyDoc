
import 'package:bookmydoc/core/networking/api_error_handler.dart';
import 'package:bookmydoc/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState<T> with _$HomeState<T> {
   const factory HomeState.homeInitial() = _HomeInitial;
   const factory HomeState.homeLoading() = HomeLoading;
   const factory HomeState.homeSuccess(SpecializationsResponseModel specializationsResponseModel) = HomeSuccess;
   const factory HomeState.homeError(ErrorHandler errorHandler) = HomeError;
}