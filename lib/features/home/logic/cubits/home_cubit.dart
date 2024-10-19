import 'package:bookmydoc/features/home/data/repos/home_repo.dart';
import 'package:bookmydoc/features/home/logic/cubits/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.homeInitial());

  Future<void> getSpecializationsData() async {
    emit(const HomeState.homeLoading());
    final result = await _homeRepo.getSpecializationsData();
    result.when(
      success: (specializationsResponseModel) {
        emit( HomeState.homeSuccess(specializationsResponseModel));
      },
      failure:(errorHandler) {
        emit(HomeState.homeError(errorHandler));
      },
    );
  }
}