import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing_core/sky_printing_core.dart'; 

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.dataMenu,
    required this.currentIndex,
    required this.child,
  });
  final Widget child;
  final List<DataHelper> dataMenu;
  final Function(int) currentIndex;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: dataMenu.indexWhere((element) => element.isSelected),
        onTap: (int index) {
          log.e("Current Index Bottom Nav Bar: $index");
          currentIndex(index);
          _selectPage(dataMenu[index].title!, index, context);
          log.f('Selected ${dataMenu[index].title!}');
          log.e(
              "New Index Bottom Nav Bar: ${dataMenu.indexWhere((element) => element.isSelected)}");
        },
        items: dataMenu
            .map((e) => BottomNavigationBarItem(
                  icon: Icon(e.icon),
                  label: e.title,
                ))
            .toList(),
      ),
    );
  }

  void _selectPage(String title, int index, BuildContext context) {
    currentIndex(index);
    if (title == Strings.of(context)!.dashboard) {
      context.goNamed(Routes.dashboard.name);
    } else if (title == Strings.of(context)!.history) {
      context.goNamed(Routes.history.name);
    } else if (title == Strings.of(context)!.wallet) {
      context.goNamed(Routes.wallet.name);
    } else if (title == Strings.of(context)!.settings) {
      context.goNamed(Routes.settings.name);
    }
  }
}
