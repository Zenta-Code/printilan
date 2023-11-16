import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/ui/order/cubit/order_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

class OrderPage extends StatefulWidget {
  OrderPage({
    super.key,
  });

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    final params = GoRouterState.of(context).extra as Map<String, dynamic>?;
    final List<Placemark> placemark = params!['placemarks'];
    return Parent(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title: Text(params!['title']),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(params['title']),
            Text(params['price']),
            Text(
              placemark.first.locality!.split(' ').last,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            BlocBuilder<OrderCubit, OrderState>(
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
                  )),
                  success: (data) {
                    log.i(data);
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            context
                                .read<OrderCubit>()
                                .joinRoom(data[index]!.id!);
                          },
                          child: ListTile(
                            title: Text(data[index].name!),
                            subtitle: Text(data[index].id!),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
            TextButton(
              onPressed: () {
                context.read<OrderCubit>().upload();
              },
              child: Text('Pick File'),
            ),
            ElevatedButton(
                onPressed: () => context.read<OrderCubit>().result == null
                    ? null
                    : context.read<OrderCubit>().order(),
                child: Text('Order'))
          ],
        ),
      ),
    );
  }
}
