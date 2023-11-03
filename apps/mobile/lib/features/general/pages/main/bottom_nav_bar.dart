import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing/features/general/pages/main/cubit/main_cubit.dart';
import 'package:sky_printing/utils/helper/data_helper.dart';

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
          context.read<MainCubit>().updateIndex(index);
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
}
