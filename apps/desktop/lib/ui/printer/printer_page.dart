import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing_admin/ui/main/cubit/main_cubit.dart';
import 'package:sky_printing_admin/ui/printer/cubit/printer_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';
import 'package:windows_printing_models/windows_printing_models.dart';

class PrinterPage extends StatefulWidget {
  const PrinterPage({super.key});

  @override
  State<PrinterPage> createState() => _PrinterPageState();
}

class _PrinterPageState extends State<PrinterPage> {
  @override
  Widget build(BuildContext context) {
    final mainCubit = context.watch<MainCubit>();

    return BlocBuilder<PrinterCubit, PrinterState>(
      builder: (context, state) => state.when(
        loading: () {
          context.read<MainCubit>().fetchPrinters();
          return const Center(
            child: Loading(),
          );
        },
        empty: () => const Center(
          child: Empty(),
        ),
        failure: (message) => Center(
          child: Empty(
            errorMessage: message,
          ),
        ),
        success: (data) {
          context.read<MainCubit>().fetchPrinters();
          final List<Printer> printersLocal = data;
          final List<PrinterEntity> printersRemote = mainCubit.printerData;

          return ScaffoldPage(
            header: PageHeader(
              title: const Text('Printer'),
              commandBar: FilledButton(
                onPressed: () {
                  context.read<PrinterCubit>().syncPrinter();
                },
                child: const Text('Sync'),
              ),
            ),
            content: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: printersLocal.length,
                    itemBuilder: (context, index) {
                      return buildListView(
                        name: printersLocal[index].printerName!,
                        countJobs: printersLocal[index].cJobs!,
                        printerOnline: printersLocal[index].printerOnline!,
                        index: index,
                        tag: "Local",
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: printersRemote.length,
                    itemBuilder: (context, index) {
                      return buildListView(
                        name: printersRemote[index].printerName!,
                        countJobs: printersRemote[index].countJobs!,
                        printerOnline: printersRemote[index].printerOnline!,
                        index: index,
                        tag: "Remote",
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildListView({
    required String name,
    int? countJobs,
    bool? printerOnline,
    required int index,
    required String tag,
  }) {
    if (index == 0) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tag,
            style: FluentTheme.of(context).typography.subtitle,
          ),
          const SizedBox(height: 8),
          buildPrinterListItem(
            name: name,
            countJobs: countJobs,
            printerOnline: printerOnline,
          ),
        ],
      );
    } else {
      return buildPrinterListItem(
        name: name,
        countJobs: countJobs,
        printerOnline: printerOnline,
      );
    }
  }

  Widget buildPrinterListItem({
    required String name,
    int? countJobs,
    bool? printerOnline,
  }) {
    return HoverButton(
      onPressed: () {},
      cursor: SystemMouseCursors.click,
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: Card(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: FluentTheme.of(context).typography.subtitle,
                ),
                const SizedBox(height: 8),
                countJobs == null
                    ? Container()
                    : Text(
                        "Total Job : $countJobs",
                        style: FluentTheme.of(context).typography.body,
                      ),
                const SizedBox(height: 8),
                printerOnline == null
                    ? Container()
                    : Text(
                        "Status : ${printerOnline ? "Online" : "Offline"}",
                        style: FluentTheme.of(context).typography.body,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
