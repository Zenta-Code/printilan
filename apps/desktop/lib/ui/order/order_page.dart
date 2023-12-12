import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_printing_admin/ui/order/cubit/order_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart' hide Button;
import 'package:sky_printing_domain/sky_printing_domain.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool openCreateOrder = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
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
            ),
          ),
          success: (_) {
            final data = context.watch<OrderCubit>().orderData;

            return buildScaffold(data, context);
          },
        );
      },
    );
  }

  ScaffoldPage buildScaffold(
    List<OrderEntityResponse> data,
    BuildContext context,
  ) {
    final theme = FluentTheme.of(context);
    final width = MediaQuery.of(context).size.width;
    final orderCubit = context.watch<OrderCubit>();
    return ScaffoldPage(
      bottomBar:
          openCreateOrder ? null : buildBottomBar(context, theme, orderCubit),
      header: PageHeader(
        title: Text(Strings.of(context)!.order),
        commandBar: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                "${Strings.of(context)!.total_orders} : ${data.length} ${Strings.of(context)!.order}",
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            FilledButton(
              child: Text("Create Report"),
              onPressed: () {
                setState(() {
                  openCreateOrder = !openCreateOrder;
                });
              },
            ),
          ],
        ),
      ),
      content: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) {
                final e = data[index];
                // log.e(e.document);
                return SizedBox(
                  child: Card(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildCustomerDetails(e, context, theme),
                        SizedBox(
                          height: 10.h,
                        ),
                        buildDocumentDetails(e, context, theme, width),
                        SizedBox(
                          height: 10.h,
                        ),
                        buildOrderDetails(e, context, theme, width),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottomBar(
    BuildContext context,
    FluentThemeData theme,
    OrderCubit orderCubit,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(8.sp),
          margin: EdgeInsets.all(8.sp),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: [
              Text(
                "${Strings.of(context)!.create_report}",
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  DatePicker(
                    selected: orderCubit.startDate,
                    header: Strings.of(context)!.start_date,
                    onChanged: (date) {
                      orderCubit.startDate = date;
                      setState(() {
                        orderCubit.startDate = date;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  DatePicker(
                    selected: orderCubit.endDate,
                    header: Strings.of(context)!.end_date,
                    onChanged: (date) {
                      orderCubit.endDate = date;
                      setState(() {
                        orderCubit.endDate = date;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              FilledButton(
                child: Text("Create Report"),
                onPressed: () {
                  orderCubit.createReport(
                    context,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCustomerDetails(
      OrderEntityResponse e, BuildContext context, FluentThemeData theme) {
    return Container(
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Strings.of(context)!.customer_details,
              style: theme.typography.subtitle!.copyWith(
                fontSize: 18.sp,
              )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.sp),
            child: Divider(),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${Strings.of(context)!.name}: ",
              ),
              Text(
                e.user!.name ?? "No User Name",
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${Strings.of(context)!.email}: ",
              ),
              Text(
                e.user!.email ?? "No User Email",
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${Strings.of(context)!.phone}: ",
              ),
              Text(
                e.user!.phone ?? "No User Phone",
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${Strings.of(context)!.phone}: ",
              ),
              Text(
                e.user!.phone ?? "No User Phone",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDocumentDetails(
    OrderEntityResponse e,
    BuildContext context,
    FluentThemeData theme,
    double width,
  ) {
    return Container(
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Strings.of(context)!.document_details,
              style: theme.typography.subtitle!.copyWith(
                fontSize: 18.sp,
              )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.sp),
            child: Divider(),
          ),
          Row(
            children: [
              Text("${Strings.of(context)!.file_name}: "),
              Text(
                e.document!.fileName!.length > 20 && width < 1900
                    ? "${e.document!.fileName!.substring(0, 20)}..."
                    : e.document!.fileName!.length > 40
                        ? "${e.document!.fileName!.substring(0, 40)}..."
                        : e.document!.fileName!,
              ),
            ],
          ),
          Row(
            children: [
              Text("${Strings.of(context)!.file_type}: "),
              Text(
                e.document!.type!,
              ),
            ],
          ),
          Row(
            children: [
              Text("${Strings.of(context)!.total_pages}: "),
              Text(
                "${e.document!.totalPage!} ${Strings.of(context)!.pages}",
              ),
            ],
          ),
          Row(
            children: [
              Text("${Strings.of(context)!.file_size}: "),
              Text(
                "${(int.parse(e.document!.size!) / 1000000).toStringAsFixed(2)} MB",
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildOrderDetails(OrderEntityResponse e, BuildContext context,
      FluentThemeData theme, double width) {
    return Container(
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.of(context)!.order_details,
            style: theme.typography.subtitle!.copyWith(
              fontSize: 18.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.sp),
            child: Divider(),
          ),
          Row(
            children: [
              Text("${Strings.of(context)!.status}: "),
              Text(
                e.order!.status!,
              ),
            ],
          ),
          Row(
            children: [
              Text("${Strings.of(context)!.total_price}: "),
              Text(
                "Rp. ${e.order!.totalPrice!}",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
