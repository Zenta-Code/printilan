import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> with MainBoxMixin {
  final GetOrderByUserUsecase _getOrderByUserUsecase;
  MainCubit(
    this._getOrderByUserUsecase,
  ) : super(const _Loading());

  int currentIndex = 0;
  late List<DataHelper> dataMenus;
  late List<OrderEntityResponse> dataOrder = [];

  void updateIndex(int index, {BuildContext? context}) {
    emit(const _Loading());
    currentIndex = index;
    if (context != null) {
      initMenu(context);
      emit(const _Loading());
    }
    emit(_Success(dataMenus[index]));
  }

  void initMenu(BuildContext context) {
    dataMenus = [
      DataHelper(
        title: Strings.of(context)!.dashboard,
        icon: Icons.home,
      ),
      DataHelper(
        title: Strings.of(context)!.history,
        icon: Icons.history,
      ),
      DataHelper(
        title: Strings.of(context)!.settings,
        icon: Icons.person_2_outlined,
      ),
    ];
    updateIndex(currentIndex);
    getOrderByUser();
  }

  Future<List<OrderEntityResponse>> getOrderByUser() async {
    final data = await _getOrderByUserUsecase.call(GetOrderByUserParams(
      userId: getData<UserEntity>(MainBoxKeys.user).id!,
      limit: 1,
    ));
    data.fold(
      (l) {
        log.e(l);
      },
      (success) {
        dataOrder = success;
      },
    );
    return dataOrder;
  }
}
