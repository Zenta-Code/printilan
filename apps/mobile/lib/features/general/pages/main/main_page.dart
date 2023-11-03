import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/features/features.dart';

///*********************************************
/// Created by ukietux on 25/08/20 with ♥
/// (>’_’)> email : hey.mudassir@gmail.com
/// github : https://www.github.com/Lzyct <(’_’<)
///*********************************************
/// © 2020 | All Right Reserved
class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.child});

  final Widget child;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController tabController;
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
  ];
  final Color unselectedColor = Colors.grey;
  final Color unselectedColorReverse = Colors.white;
  late int currentPage;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<MainCubit>().initMenu(context);
  }

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 5, vsync: this);
    tabController.animation?.addListener(() {
      final value = tabController.animation!.value.round();
      if (value != currentPage && mounted) {
        changePage(value);
      }
    });
    super.initState();
  }

  void changePage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      scaffoldKey: _scaffoldKey,
      appBar: _appBar(),
      child: BottomBar(
        clip: Clip.none,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            TabBar(
              indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
              controller: tabController,
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: currentPage <= 4
                        ? colors[currentPage]
                        : unselectedColor,
                    width: 4,
                  ),
                  insets: EdgeInsets.fromLTRB(16, 0, 16, 8)),
              tabs: [
                SizedBox(
                  height: 55,
                  width: 40,
                  child: Center(
                      child: Icon(
                    Icons.home,
                    color: currentPage == 0 ? colors[0] : unselectedColor,
                  )),
                ),
                SizedBox(
                  height: 55,
                  width: 40,
                  child: Center(
                    child: Icon(
                      Icons.search,
                      color: currentPage == 1 ? colors[1] : unselectedColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 55,
                  width: 40,
                ),
                SizedBox(
                  height: 55,
                  width: 40,
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: currentPage == 3 ? colors[3] : unselectedColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 55,
                  width: 40,
                  child: Center(
                    child: Icon(
                      Icons.settings,
                      color: currentPage == 4 ? colors[4] : unselectedColor,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: -25,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
        fit: StackFit.expand,
        icon: (width, height) => Center(
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: null,
            icon: Icon(
              Icons.arrow_upward_rounded,
              color: unselectedColor,
              size: width,
            ),
          ),
        ),
        borderRadius: BorderRadius.circular(16),
        duration: Duration(milliseconds: 500),
        curve: Curves.decelerate,
        showIcon: true,
        width: MediaQuery.of(context).size.width * 0.9,
        barColor: colors[currentPage].computeLuminance() > 0.5
            ? Colors.black
            : Colors.white,
        start: 2,
        end: 0,
        offset: 30,
        barAlignment: Alignment.bottomCenter,
        iconHeight: 30,
        iconWidth: 30,
        reverse: false,
        barDecoration: BoxDecoration(
          color: colors[currentPage],
          borderRadius: BorderRadius.circular(500),
        ),
        iconDecoration: BoxDecoration(
          color: colors[currentPage],
          borderRadius: BorderRadius.circular(500),
        ),
        hideOnScroll: true,
        scrollOpposite: false,
        onBottomBarHidden: () {},
        onBottomBarShown: () {},
        body: (context, controller) => TabBarView(
          controller: tabController,
          dragStartBehavior: DragStartBehavior.down,
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.purple,
            ),
            SettingsPage(),
          ],
        ),
      ),

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
