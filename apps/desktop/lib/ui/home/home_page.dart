import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_printing_admin/ui/home/cubit/home_cubit.dart';
import 'package:sky_printing_admin/ui/main/cubit/main_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/order/order_entity.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final mainCubit = context.read<MainCubit>();
    final homeCubit = context.watch<HomeCubit>();
    final theme = FluentTheme.of(context);
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return state.when(
        loading: () => const Center(
          child: Loading(),
        ),
        empty: () => const Center(
          child: Empty(),
        ),
        failure: (message) => Center(
            child: Empty(
          errorMessage: message,
        )),
        success: (data) {
          return ScaffoldPage.scrollable(
            header: PageHeader(
              title: Text(Strings.of(context)!.home),
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  dashContainer(width / 5, 'Order', FluentIcons.shopping_cart,
                      data['order'].length.toString(), ' order'),
                  dashContainer(width / 5, 'Bundle', FluentIcons.package,
                      data['bundle'].length.toString(), ' bundle'),
                  dashContainer(width / 5, 'Printer', FluentIcons.print,
                      mainCubit.printerData.length.toString(), ' printer'),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.all(8.sp),
                margin: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.of(context)!.income,
                      ),
                      SizedBox(height: 10.h),
                      buildSumOrder(homeCubit, data['order'], theme),
                      SizedBox(height: 20.h),
                      buildChart(data['order']),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      );
    });
  }

  Widget buildSumOrder(
    HomeCubit homeCubit,
    List<OrderEntityResponse> data,
    FluentThemeData theme,
  ) {
    return data.isEmpty
        ? Text(
            '+ Rp. 0',
            style: theme.typography.title!.copyWith(
              fontSize: 24.sp,
            ),
          )
        : Text(
            '+ Rp. ${homeCubit.sumOrder(data)}',
            style: theme.typography.title!.copyWith(
              fontSize: 24.sp,
            ),
          );
  }

  Widget buildChart(
    List<OrderEntityResponse> data,
  ) {
    return data.isEmpty
        ? SfCartesianChart(
            primaryXAxis: DateTimeAxis(),
          )
        : SfCartesianChart(
            primaryXAxis: DateTimeAxis(),
            series: <ChartSeries>[
              LineSeries<OrderEntityResponse, DateTime>(
                dataSource: data,
                xValueMapper: (OrderEntityResponse order, _) =>
                    DateTime.parse(order.order!.createdAt!),
                yValueMapper: (OrderEntityResponse order, _) =>
                    order.order!.totalPrice,
              )
            ],
          );
  }

  Widget dashContainer(
      double width, String title, IconData icon, String value, String unit) {
    return Card(
      child: Container(
        width: width,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Icon(icon),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              value + unit,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
