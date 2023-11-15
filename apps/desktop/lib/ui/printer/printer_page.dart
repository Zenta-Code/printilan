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
          return ScaffoldPage.scrollable(
            header: const PageHeader(
              title: Text('Printer'),
            ),
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: Dimens.space8,
                  crossAxisSpacing: Dimens.space8,
                ),
                itemCount: printers.length,
                itemBuilder: (context, index) {
                  final Printer printer = printers[index];
                  return buildPrinterCard(
                    name: printer.printerName ?? '',
                    countJobs: printer.cJobs.toString() ?? '',
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildPrinterCard({required String name, required String countJobs}) {
    return Container(
      margin: EdgeInsets.all(Dimens.space8),
      width: MediaQuery.of(context).size.width / 2 - Dimens.space16,
      child: Card(
        child: Column(
          children: [
            Text(name),
            SizedBox(
              height: Dimens.space8,
            ),
            Text(countJobs),
          ],
        ),
      ),
    );
  }
}
