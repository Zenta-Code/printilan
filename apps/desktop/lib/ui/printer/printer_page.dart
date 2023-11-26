import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing_admin/ui/main/cubit/main_cubit.dart';
import 'package:sky_printing_admin/ui/printer/cubit/printer_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/printer_enitity.dart';
import 'package:windows_printing_models/windows_printing_models.dart';

class PrinterPage extends StatefulWidget {
  const PrinterPage({super.key});

  @override
  State<PrinterPage> createState() => _PrinterPageState();
}

class _PrinterPageState extends State<PrinterPage> {
  @override
  Widget build(BuildContext context) {
    final mainCubit = context.read<MainCubit>();

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
            content: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 270,
                  mainAxisExtent: 290,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              padding: const EdgeInsets.all(16),
              itemCount: printersRemote.length,
              itemBuilder: (context, index) {
                return buildPrinterCard(
                  name: printersRemote[index].printerName!,
                  countJobs: printersRemote[index].storeId!.toString(),
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
      },
      cursor: SystemMouseCursors.click,
      builder: (context, state) {
        return Card(
          padding: const EdgeInsets.all(8),
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
