import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/ui/main/cubit/main_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.dataMenu,
    required this.currentIndex,
  });
  final List<DataHelper> dataMenu;
  final Function(int) currentIndex;

  void selectPage(String title, int index, BuildContext context) {
    currentIndex(index);
    if (title == Strings.of(context)!.dashboard) {
      context.goNamed(Routes.home.name);
    } else if (title == Strings.of(context)!.history) {
      context.goNamed(Routes.history.name);
    } else if (title == Strings.of(context)!.wallet) {
      context.goNamed(Routes.wallet.name);
    } else if (title == Strings.of(context)!.settings) {
      context.goNamed(Routes.settings.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      backgroundColor: Colors.black,
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.indicator,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      padding: const EdgeInsets.all(12),
      snakeViewColor: Colors.white,
      selectedItemColor:
          SnakeShape.indicator == SnakeShape.indicator ? Colors.white : null,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      currentIndex: context.read<MainCubit>().currentIndex,
      onTap: (index) {
        log.e("Current Index Bottom Nav Bar: $index");

        selectPage(
          dataMenu[index].title!,
          index,
          context,
        );
        log.f('Selected ${dataMenu[index].title!}');
        log.e(
            "New Index Bottom Nav Bar: ${context.read<MainCubit>().currentIndex}");
      },
      items: dataMenu
          .map((e) => BottomNavigationBarItem(
                icon: Icon(e.icon),
                label: e.title,
              ))
          .toList(),
    );
  }
}
