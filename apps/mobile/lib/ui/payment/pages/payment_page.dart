import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing/ui/payment/cubit/payment_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({
    super.key,
    required this.redirectUrl,
    required this.r,
    required this.storeId,
  });
  final String redirectUrl;
  final dynamic r;
  final String storeId;
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  void initState() {
    context.read<PaymentCubit>().createController(widget.redirectUrl, context);
    context.read<PaymentCubit>().r = widget.r;
    context.read<PaymentCubit>().storeId = widget.storeId;
    log.e("==== PARAMSS  ${widget.r}");
    log.e("==== PARAMSS  ${widget.storeId}");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      body: BlocBuilder<PaymentCubit, PaymentState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              log.e("\ninitial\n");
              return Container();
            },
            loading: () {
              log.e("\nloading\n");
              return const Loading();
            },
            success: (controller) {
              log.e("\nsuccess\n");
              return SafeArea(child: WebViewWidget(controller: controller));
            },
            failed: () {
              log.e("\nfailed\n");
              return Container();
            },
          );
        },
      ),
    );
  }
}
