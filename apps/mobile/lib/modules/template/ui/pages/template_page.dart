import 'package:flutter/material.dart';
import 'package:sky_printing/core/core.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Parent(
      child: Center(
        child: Text("Template Page"),
      ),
    );
  }
}
