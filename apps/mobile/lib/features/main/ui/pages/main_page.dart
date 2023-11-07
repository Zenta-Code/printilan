import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing/core/resources/dimens.dart';
import 'package:sky_printing/core/widgets/button_notification.dart';
import 'package:sky_printing/core/widgets/parent.dart';
import 'package:sky_printing/features/main/ui/cubit/main_cubit.dart';
import 'package:sky_printing/features/main/ui/widgets/bottom_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.child});

  final Widget child;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<MainCubit>().initMenu(context);
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      scaffoldKey: _scaffoldKey,
      appBar: _appBar(),
      extendBody: true,
      bottomNavigation: Container(
        margin: EdgeInsets.all(Dimens.space16),
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
          ),
          child: BottomNavBar(
            dataMenu: context.read<MainCubit>().dataMenus,
            currentIndex: (int index) {
              if (index != 2) {
                context.read<MainCubit>().updateIndex(index);
              }
            },
            child: widget.child,
          ),
        ),
      ),
      child: widget.child,
      // child: widget.child,
      // drawer: SizedBox(
      //   width: context.widthInPercent(80),
      //   child: MenuDrawer(
      //     dataMenu: context.read<MainCubit>().dataMenus,
      //     currentIndex: (int index) {
      //       /// don't update when index is logout
      //       if (index != 2) {
      //         context.read<MainCubit>().updateIndex(index);
      //       }
      //       /// hide navigation drawer
      //       _scaffoldKey.currentState?.openEndDrawer();
      //     },
      //     onLogoutPressed: () {
      //       showDialog(
      //         context: context,
      //         builder: (_) => AlertDialog(
      //           title: Text(
      //             Strings.of(context)!.logout,
      //             style: Theme.of(context).textTheme.bodyLarge,
      //           ),
      //           content: Text(
      //             Strings.of(context)!.logoutDesc,
      //             style: Theme.of(context).textTheme.bodyMedium,
      //           ),
      //           actions: [
      //             TextButton(
      //               onPressed: () => context.back(),
      //               child: Text(
      //                 Strings.of(context)!.cancel,
      //                 style: Theme.of(context).textTheme.bodyMedium?.copyWith(
      //                       color: Theme.of(context)
      //                           .extension<LzyctColors>()!
      //                           .subtitle,
      //                     ),
      //               ),
      //             ),
      //             TextButton(
      //               onPressed: () {
      //                 context.read<AuthCubit>().logout();
      //               },
      //               child: Text(
      //                 Strings.of(context)!.yes,
      //                 style: Theme.of(context).textTheme.bodyMedium?.copyWith(
      //                       color: Theme.of(context)
      //                           .extension<LzyctColors>()!
      //                           .red,
      //                     ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     },
      //   ),
      // ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: BlocBuilder<MainCubit, MainState>(
          builder: (_, state) {
            return Text(
              state.when(
                loading: () => "-",
                success: (data) => data?.title ?? "-",
              ),
              style: Theme.of(context).textTheme.titleLarge,
            );
          },
        ),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.sort,
        //     size: Dimens.space24,
        //     color: Theme.of(context).extension<LzyctColors>()!.blue,
        //     semanticLabel: "Menu",
        //   ),
        //   onPressed: () {
        //     _scaffoldKey.currentState?.openDrawer();
        //   },
        // ),
        actions: const [
          /// Notification on Dashboard
          ButtonNotification(),
        ],
      ),
    );
  }
}
