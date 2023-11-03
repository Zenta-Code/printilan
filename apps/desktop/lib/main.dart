// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:pdf/pdf.dart';
// import 'package:printing/printing.dart';
// import 'package:printing/src/print_job.dart';

// void main() async {
//   // await Firebase.initializeApp(
//   //   options: DefaultFirebaseOptions.currentPlatform,
//   // );
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Printer> printers = [];
//   Printer? printer;
//   FilePickerResult? result;
//   @override
//   void initState() {
//     getPrinters();
//     super.initState();
//   }

//   void getPrinters() async {
//     printers = await Printing.listPrinters();
//     setState(() {
//       printers = printers;
//     });
//   }

//   void _pickFile() async {
//     result = await FilePicker.platform.pickFiles();
//     setState(() {
//       result = result;
//     });
//   }

//   void _jobs() async {
//     final job = PrintJobs().getJob(0);
//     debugPrint("Job: ${job.toString()}");
//   }

//   void _pickPrinter() async {
//     printer = await Printing.pickPrinter(context: context);
//     debugPrint(printer.toString());
//     setState(() {
//       printer = printer;
//     });
//   }

//   void _printPdf() async {
//     printer = await Printing.pickPrinter(context: context);

//     result = await FilePicker.platform.pickFiles(
//       withData: true,
//       type: FileType.custom,
//       allowedExtensions: ['pdf'],
//     );
//     if (printer != null && result != null) {
//       final response = await Printing.directPrintPdf(
//         printer: printer!,
//         onLayout: (PdfPageFormat format) async => result!.files.single.bytes!,
//         name: result!.files.single.name,
//         format: PdfPageFormat.standard,
//       );
//       debugPrint('''
//       Response ${response.toString()}
//       ''');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//           child: Column(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: printers.map((e) => Text(e.name)).toList(),
//           ),
//           Text(result?.files.single.name ?? ''),
//           ElevatedButton(
//             onPressed: _pickFile,
//             child: const Text('Pick File'),
//           ),
//           Text(
//             printer?.name ?? '',
//             style: const TextStyle(fontSize: 20),
//           ),
//           ElevatedButton(
//             onPressed: _pickPrinter,
//             child: const Text('Pick Printer'),
//           ),
//           ElevatedButton(
//             onPressed: _printPdf,
//             child: const Text('Print'),
//           ),
//           ElevatedButton(
//             onPressed: _jobs,
//             child: const Text('Jobs'),
//           ),
//         ],
//       )),
//     );
//   }
// }
// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:win32/win32.dart';

class PrinterNames {
  final int _flags;

  PrinterNames(this._flags);

  Iterable<PRINTER_INFO_2> all() sync* {
    try {
      _getBufferSize();

      try {
        _readRawBuff();
        yield* parse();
      } finally {
        free(_rawBuffer);
      }
    } finally {
      free(_pBuffSize);
      free(_bPrinterLen);
    }
  }

  late Pointer<DWORD> _pBuffSize;
  late Pointer<DWORD> _bPrinterLen;

  void _getBufferSize() {
    _pBuffSize = calloc<DWORD>();
    _bPrinterLen = calloc<DWORD>();

    EnumPrinters(_flags, nullptr, 2, nullptr, 0, _pBuffSize, _bPrinterLen);

    if (_pBuffSize.value == 0) {
      throw 'Read printer buffer size fail';
    }
  }

  late Pointer<BYTE> _rawBuffer;

  void _readRawBuff() {
    _rawBuffer = malloc.allocate<BYTE>(_pBuffSize.value);

    final isRawBuffFail = EnumPrinters(_flags, nullptr, 2, _rawBuffer,
            _pBuffSize.value, _pBuffSize, _bPrinterLen) ==
        0;

    if (isRawBuffFail) {
      throw 'Read printer raw buffer fail';
    }
  }

  Iterable<PRINTER_INFO_2> parse() sync* {
    for (var i = 0; i < _bPrinterLen.value; i++) {
      final printer = _rawBuffer.cast<PRINTER_INFO_2>().elementAt(i);
      yield printer.ref;
    }
  }
}

void main() async {
  final printerNames = PrinterNames(PRINTER_ENUM_LOCAL);
  try {
    final printer = printerNames.all().last;
    // print(printer.pPrinterName.toDartString());
    // final jobs = await Process.start('assets/PDFtoPrinter.exe',
    //     ['assets/2023-ProposalPUI.pdf', printer.pPrinterName.toDartString()]);
    // print(jobs.stdout);

    isOffline(printer.pPrinterName.toDartString());
  } catch (e) {
    print(e);
  }
}

isOffline(String name) {
  var query = '''
    Get-WmiObject -Query "SELECT * FROM Win32_Printer WHERE Name = '$name'" | Select-Object -ExpandProperty WorkOffline
    ''';

  final job = Process.runSync('powershell.exe', [query]);
  print(job.stdout);
  if (job.stdout.contains('True')) {
    print('Offline');
  } else {
    print('Online');
  }
  return job.stdout.contains('Offline');
}
 