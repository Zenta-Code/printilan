 
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing_admin/ui/order/cubit/order_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

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
            log.f(data);
            return buildScaffold(data,context);
          },
        );
      },
    );
  }

  ScaffoldPage buildScaffold(List<Order> data,BuildContext context) {
    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: Text('Order'),
        commandBar: FilledButton(
          onPressed: () {
            context.read<OrderCubit>().clearOrder();
          },
          child: Text('Clear Order'),
        ),
      ),
      children: data
          .map((e) => Card(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text("Document Id : ${e.documentId ?? "No Document ID"}"),
                    Text("User Id : ${e.userId ?? "No User ID"}"),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
