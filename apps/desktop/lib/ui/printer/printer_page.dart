import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing_admin/ui/printer/cubit/printer_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:windows_printing_models/windows_printing_models.dart';

class PrinterPage extends StatefulWidget {
  const PrinterPage({super.key});

  @override
  State<PrinterPage> createState() => _PrinterPageState();
}

class _PrinterPageState extends State<PrinterPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrinterCubit, PrinterState>(
      builder: (context, state) => state.when(
        loading: () => const Center(
          child: Loading(),
        ),
        empty: () => const Center(
          child: Empty(),
        ),
        failure: (message) => Center(
          child: Empty(
            errorMessage: message,
          ),
        ),
        success: (data) {
          final List<Printer> printers = data;
          log.i(data);
          return ScaffoldPage(
            header: PageHeader(
              title: Text('Printer'),
              commandBar: FilledButton(
                onPressed: () {
                  context.read<PrinterCubit>().syncPrinter();
                },
                child: Text('Sync'),
              ),
            ),
            content: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 270,
                  mainAxisExtent: 290,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              padding: const EdgeInsets.all(16),
              itemCount: printers.length,
              itemBuilder: (context, index) {
                return buildPrinterCard(
                  name: printers[index].printerName!,
                  countJobs: printers[index].cJobs!.toString(),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget buildPrinterCard({required String name, required String countJobs}) {
    return HoverButton(
      onPressed: () {
        log.i('click');
      },
      cursor: SystemMouseCursors.click,
      builder: (context, state) {
        return Card(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: FluentTheme.of(context).typography.subtitle,
              ),
            ],
          ),
        );
      },
    );
  }
}
