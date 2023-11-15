import 'package:flutter/material.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return const Parent(
      child: Text('HistoryPage'),
    );
  }
}
