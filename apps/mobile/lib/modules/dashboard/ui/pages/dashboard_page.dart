import 'package:flutter/material.dart';
import 'package:sky_printing/core/core.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Dashboard'),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  title: Text('Print'),
                  onTap: () => Navigator.pushNamed(context, '/print'),
                ),
                ListTile(
                  title: Text('Settings'),
                  onTap: () => Navigator.pushNamed(context, '/settings'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
