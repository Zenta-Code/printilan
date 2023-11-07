import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/utils/utils.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const _Loading());

  int _currentIndex = 0;
  late List<DataHelper> dataMenus;

  void updateIndex(int index, {BuildContext? context}) {
    emit(const _Loading());
    _currentIndex = index;
    if (context != null) {
      initMenu(context);
    }
    emit(_Success(dataMenus[_currentIndex]));
  }

  void initMenu(BuildContext context) {
    dataMenus = [
      DataHelper(
        title: Strings.of(context)!.dashboard,
        isSelected: true,
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
        title: Strings.of(context)!.profile,
        icon: Icons.person_2_outlined,
      ),
    ];
    updateIndex(_currentIndex);
  }
}
