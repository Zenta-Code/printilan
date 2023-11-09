import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing_admin/core/core.dart';
import 'package:sky_printing_admin/module/dashboard/cubit/dashboard_cubit.dart';
import 'package:sky_printing_admin/utils/utils.dart';

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
    final dashCubit = context.read<DashboardCubit>();
    final width = MediaQuery.of(context).size.width;
    return BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
      return state.when(
        loading: () => Center(
          child: Loading(),
        ),
        empty: () => Center(
          child: Empty(),
        ),
        failure: (message) => Center(
            child: Empty(
          errorMessage: message,
        )),
        success: (data) {
          log.i(data);
          return ScaffoldPage.scrollable(
            header: const PageHeader(
              title: Text('Dashboard'),
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dashContainer(width / 5, 'Bundle', FluentIcons.package,
                      data['bundle'].length.toString(), ' bundle'),
                  dashContainer(width / 5, 'Bundle', FluentIcons.package,
                      data['bundle'].length.toString(), ' bundle'),
                  dashContainer(width / 5, 'Bundle', FluentIcons.package,
                      data['bundle'].length.toString(), ' bundle'),
                  dashContainer(width / 5, 'Bundle', FluentIcons.package,
                      data['bundle'].length.toString(), ' bundle'),
                ],
              ),
            ],
          );
        },
      );
    });
  }
}

Widget dashContainer(
    double width, String title, IconData icon, String value, String unit) {
  return Card(
    child: Container(
      width: width,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Icon(icon),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            value + unit,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
