import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_printing/ui/history/cubit/history_cubit.dart';
import 'package:sky_printing/ui/main/cubit/main_cubit.dart';
import 'package:sky_printing/ui/main/widgets/bottom_nav_bar.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      bottomNavigation: BottomNavBar(
        dataMenu: context.read<MainCubit>().dataMenus,
        currentIndex: (int index) {
          context.read<MainCubit>().updateIndex(
                index,
              );
        },
      ),
      child: BlocBuilder<HistoryCubit, HistoryState>(
        builder: (context, state) {
          return state.when(
            loading: () {
              return const Center(
                child: Loading(),
              );
            },
            failure: (String message) {
              return Center(
                child: Text(message),
              );
            },
            empty: () {
              return const Center(
                child: Text("Empty"),
              );
            },
            success: (data) {
              log.f(data);
              return Container(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(8.sp),
                            margin: EdgeInsets.symmetric(
                              horizontal: 8.sp,
                              vertical: 4.sp,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Service name :"),
                                    Text(
                                      "Store name :",
                                    ),
                                    Text(
                                      "File name :",
                                    ),
                                    Text(
                                      "Total price :",
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data[index].bundle!.name!,
                                    ),
                                    Text(
                                      data[index].store!.name!,
                                    ),
                                    Text(
                                      data[index].document!.fileName!.substring(
                                            0,
                                            10,
                                          ),
                                    ),
                                    Text(
                                      "Rp. ${data[index].order!.totalPrice!}",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
