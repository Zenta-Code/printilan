import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const _Loading());

  int currentIndex = 0;
  late List<DataHelper> dataMenus;

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
        title: Strings.of(context)!.wallet,
        icon: Icons.wallet,
      ),
      DataHelper(
        title: Strings.of(context)!.settings,
        icon: Icons.person_2_outlined,
      ),
    ];
    updateIndex(currentIndex);
  }
}
