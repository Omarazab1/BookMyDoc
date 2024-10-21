import 'package:bookmydoc/core/helper/extensions.dart';
import 'package:bookmydoc/features/home/data/models/specializations_response_model.dart';
import 'package:bookmydoc/features/home/data/repos/home_repo.dart';
import 'package:bookmydoc/features/home/logic/cubits/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.specializationsInitial());
   List<SpecializationsData?>? specializationsList = [];
  Future<void> getSpecializationsData() async {
    emit(const HomeState.specializationsLoading());
    final result = await _homeRepo.getSpecializationsData();
    result.when(
      success: (specializationsResponseModel) {
        specializationsList = specializationsResponseModel.specializationDataList ?? [];
        getDoctorsList(specializationId: specializationsList?.first?.id);
        emit(HomeState.specializationsSuccess(specializationsList));
      },
      failure:(errorHandler) {
        emit(HomeState.specializationsError(errorHandler));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList = getDoctorsListBySpecializationId(specializationId);
    if(!doctorsList.isNullOrEmpty()){
      emit(HomeState.doctorsSuccess(doctorsList));
    }else{
      emit(HomeState.doctorsError(ErrorHandler.handle('No Doctors Found')));
    }
  }

  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList?.firstWhere(
        (specialization) => specialization?.id == specializationId,)?.doctorsList;
  }
}

