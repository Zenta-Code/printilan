import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/ui/order/cubit/order_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final _copiesController = TextEditingController();
  final _fileController = TextEditingController();
  @override
  void didUpdateWidget(covariant OrderPage oldWidget) {
    log.i("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _copiesController.dispose();
    _fileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final params = GoRouterState.of(context).extra as Map<String, dynamic>?;
    final List<Placemark> placemark = params!['placemarks'];

    return Parent(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title: Text(params['title']),
        ),
      ),
      child: Center(
        child: Column(
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
            Text(
                "Store Nearby and available ${placemark.first.locality!.split(' ').last}"),
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
                                .joinRoom(data[index].id!);
                          },
                          child: ListTile(
                            title: Text(data[index].name!),
                            subtitle: Text(data[index].address!.city!),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
            TextF(
              controller: _fileController,
              enable: false,
              keyboardType: TextInputType.number,
              prefixIcon: const Icon(Icons.file_copy),
              hint: 'No File Choosen',
            ),
            TextF(
              controller: _copiesController,
              keyboardType: TextInputType.number,
              prefixIcon: const Icon(Icons.copy),
              hintText: 'Copies',
              hint: 'Copies',
            ),
            TextButton(
              onPressed: () {
                context.read<OrderCubit>().pickFile();
              },
              child: const Text('Pick File'),
            ),
            ElevatedButton(
              onPressed: () => context.read<OrderCubit>().result == null
                  ? null
                  : context.read<OrderCubit>().order(),
              child: const Text('Order'),
            ),
            context.watch<OrderCubit>().controller == null
                ? Container()
                : Expanded(
                    child: WebViewWidget(
                      controller: context.read<OrderCubit>().controller!,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
