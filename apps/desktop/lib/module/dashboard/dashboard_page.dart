import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing_admin/core/themes/theme_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key}); 

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<ThemeBloc>();
    return ScaffoldPage.scrollable(
      header: const PageHeader(
        title: Text('Dashboard'),
      ),
      children: [
        const Card(
          child: Text('Dashboard Page'),
        ),
        const Card(
          child: Text('Dashboard Page'),
        ),
        const Card(
          child: Text('Dashboard Page'),
        ),
        const Card(
          child: Text('Dashboard Page'),
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 100,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return const Card(
              child: Text('Dashboard Page'),
            );
          },
        ),
      ],
    );
  }
}
