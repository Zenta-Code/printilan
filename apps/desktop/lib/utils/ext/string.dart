import 'package:fluent_ui/fluent_ui.dart';
import 'package:sky_printing_admin/utils/helper/common.dart';

extension StringExtension on String {
  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }

  void toToastError(BuildContext context) {
    try {
      final message = isEmpty ? "error" : this;
      InfoBar(
        title: const Text('Error'),
        content: Text(message),
        severity: InfoBarSeverity.error,
      );
    } catch (e, stackTrace) {
      log.e("error $e", stackTrace: stackTrace);
    }
  }

  void toToastSuccess(BuildContext context) {
    try {
      final message = isEmpty ? "success" : this;
      InfoBar(
        title: const Text('Success'),
        content: Text(message),
        severity: InfoBarSeverity.success,
      );
    } catch (e, stackTrace) {
      log.e("error $e", stackTrace: stackTrace);
    }
  }

  void toToastLoading(BuildContext context) {
    try {
      final message = isEmpty ? "loading" : this;
      InfoBar(
        title: const Text('Loading'),
        content: Text(message),
        severity: InfoBarSeverity.warning,
      );
    } catch (e, stackTrace) {
      log.e("error $e", stackTrace: stackTrace);
      log.e("$e");
    }
  }
}

// import 'package:flutter/material.dart';
// import 'package:oktoast/oktoast.dart';
// import 'package:sky_printing_admin/core/core.dart';
// import 'package:sky_printing_admin/utils/utils.dart';
// import 'package:flutter/material.dart';

// class Toast extends StatelessWidget {
//   final IconData? icon;
//   final Color? bgColor;
//   final Color? textColor;
//   final String? message;

//   const Toast(
//       {super.key, this.icon, this.bgColor, this.message, this.textColor});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             color: bgColor,
//             borderRadius: BorderRadius.circular(15),
//           ),
//           padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 icon,
//                 color: textColor,
//               ),
//               const SizedBox(
//                 width: 4,
//               ),
//               Container(
//                 constraints: const BoxConstraints(maxWidth: 250),
//                 child: Text(
//                   message!,
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyMedium
//                       ?.copyWith(color: textColor),
//                   textAlign: TextAlign.start,
//                   maxLines: 5,
//                   softWrap: true,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// extension StringExtension on String {
//   bool isValidEmail() {
//     return RegExp(
//       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
//     ).hasMatch(this);
//   }

//   void toToastError(BuildContext context) {
//     try {
//       final message = isEmpty ? "error" : this;

//       //dismiss before show toast
//       dismissAllToast(showAnim: true);

//       showToastWidget(
//         Toast(
//           bgColor: Colors.red,
//           icon: Icons.error,
//           message: message,
//           textColor: Colors.white,
//         ),
//         dismissOtherToast: true,
//         position: ToastPosition.top,
//         duration: const Duration(seconds: 3),
//       );
//     } catch (e, stackTrace) {
//       log.e("error $e",stackTrace: stackTrace);
//     }
//   }

//   void toToastSuccess(BuildContext context) {
//     try {
//       final message = isEmpty ? "success" : this;

//       //dismiss before show toast
//       dismissAllToast(showAnim: true);

//       // showToast(msg)
//       showToastWidget(
//         Toast(
//           bgColor: Colors.green,
//           icon: Icons.check_circle,
//           message: message,
//           textColor: Colors.white,
//         ),
//         dismissOtherToast: true,
//         position: ToastPosition.top,
//         duration: const Duration(seconds: 3),
//       );
//     } catch (e, stackTrace) {
//        log.e("error $e",stackTrace: stackTrace);
//        }
//   }

//   void toToastLoading(BuildContext context) {
//     try {
//       final message = isEmpty ? "loading" : this;
//       //dismiss before show toast
//       dismissAllToast(showAnim: true);

//       showToastWidget(
//         Toast(
//           bgColor: Colors.blue,
//           icon: Icons.info,
//           message: message,
//           textColor: Colors.white,
//         ),
//         dismissOtherToast: true,
//         position: ToastPosition.top,
//         duration: const Duration(seconds: 3),
//       );
//     } catch (e, stackTrace) {
//       log.e("error $e",stackTrace: stackTrace);
//       log.e("$e");
//     }
//   }
// }
