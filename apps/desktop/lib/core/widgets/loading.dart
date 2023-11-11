import 'package:flutter/material.dart';
import 'package:sky_printing_admin/core/core.dart';
import 'package:sky_printing_admin/core/widgets/color_loaders.dart';

class Loading extends StatelessWidget {
  const Loading({super.key, this.showMessage = true});

  final bool showMessage;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ColorLoader(),
          Visibility(
            visible: showMessage,
            child: Text(
              Strings.of(context)!.pleaseWait,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
