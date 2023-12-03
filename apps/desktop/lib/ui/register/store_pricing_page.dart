import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing_admin/core/app_route.dart';
import 'package:sky_printing_admin/core/themes/theme_bloc.dart';
import 'package:sky_printing_admin/core/widgets/window_button.dart';
import 'package:sky_printing_admin/ui/register/cubit/register_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart' hide Button;
import 'package:sky_printing_domain/usecases/user/user_params.dart';
import 'package:window_manager/window_manager.dart';

class StorePricingPage extends StatefulWidget {
  const StorePricingPage({super.key, required this.data});
  final StoreRegisterParams data;
  @override
  State<StorePricingPage> createState() => _StorePricingPageState();
}

class _StorePricingPageState extends State<StorePricingPage>
    with WindowListener {
  late FluentThemeData theme;
  late TextEditingController _bwConRegularPrinting;
  late TextEditingController _colorConRegularPrinting;
  late TextEditingController _bwConPrintingBinding;
  late TextEditingController _colorConPrintingBinding;
  late TextEditingController _bwConPhotoPrinting;
  late TextEditingController _colorConPhotoPrinting;

  late FocusNode _bwFnRegularPrinting;
  late FocusNode _colorFnRegularPrinting;
  late FocusNode _bwFnPrintingBinding;
  late FocusNode _colorFnPrintingBinding;
  late FocusNode _bwFnPhotoPrinting;
  late FocusNode _colorFnPhotoPrinting;

  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    _bwConRegularPrinting = TextEditingController();
    _colorConRegularPrinting = TextEditingController();
    _bwConPrintingBinding = TextEditingController();
    _colorConPrintingBinding = TextEditingController();
    _bwConPhotoPrinting = TextEditingController();
    _colorConPhotoPrinting = TextEditingController();

    _bwFnRegularPrinting = FocusNode();
    _colorFnRegularPrinting = FocusNode();
    _bwFnPrintingBinding = FocusNode();
    _colorFnPrintingBinding = FocusNode();
    _bwFnPhotoPrinting = FocusNode();
    _colorFnPhotoPrinting = FocusNode();

    // dummy data
    _bwConRegularPrinting.text = "500";
    _colorConRegularPrinting.text = "700";
    _bwConPrintingBinding.text = "1000";
    _colorConPrintingBinding.text = "1500";
    _bwConPhotoPrinting.text = "2000";
    _colorConPhotoPrinting.text = "2500";

    super.initState();
  }

  @override
  void dispose() {
    _bwConRegularPrinting.dispose();
    _colorConRegularPrinting.dispose();
    _bwConPrintingBinding.dispose();
    _colorConPrintingBinding.dispose();
    _bwConPhotoPrinting.dispose();
    _colorConPhotoPrinting.dispose();

    _bwFnRegularPrinting.dispose();
    _colorFnRegularPrinting.dispose();
    _bwFnPrintingBinding.dispose();
    _colorFnPrintingBinding.dispose();
    _bwFnPhotoPrinting.dispose();
    _colorFnPhotoPrinting.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<ThemeBloc>();

    theme = FluentTheme.of(context);
    return NavigationView(
      appBar: NavigationAppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(FluentIcons.back),
          onPressed: () {
            context.pop();
          },
        ),
        title: DragToMoveArea(
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              '${Constants.get.appName} - Store Pricing',
            ),
          ),
        ),
        actions: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 8.0),
              child: ToggleSwitch(
                content: const Text('Dark Mode'),
                checked: FluentTheme.of(context).brightness.isDark,
                onChanged: (v) {
                  if (v) {
                    appTheme.add(ThemeModeChanged(ThemeMode.dark));
                  } else {
                    appTheme.add(ThemeModeChanged(ThemeMode.light));
                  }
                },
              ),
            ),
          ),
          const WindowButtons(),
        ]),
      ),
      content: BlocListener<RegisterCubit, RegisterState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (message) {
              context.dismiss();
              displayInfoBar(context, builder: (context, close) {
                return InfoBar(
                  title: Text('Register Failed!'),
                  content: Text("$message."),
                  severity: InfoBarSeverity.error,
                );
              });
            },
            success: (data) {
              displayInfoBar(context, builder: (context, close) {
                return const InfoBar(
                  title: Text('Success!'),
                  content: Text('Register Success.'),
                  severity: InfoBarSeverity.success,
                  isLong: true,
                );
              });
              context.goNamed(Routes.login.name);
            },
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "Store Pricing",
                  style: theme.typography.title!.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text("Please enter your store pricing",
                    style: theme.typography.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: AutofillGroup(
                child: Form(
                  key: _keyForm,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer(
                        title: "Regular Printing",
                        svgPath: 'regular-printing.svg',
                        bwCon: _bwConRegularPrinting,
                        colorCon: _colorConRegularPrinting,
                        bwFn: _bwFnRegularPrinting,
                        colorFn: _colorFnRegularPrinting,
                      ),
                      buildContainer(
                        title: "Printing & Binding",
                        svgPath: 'printing-binding.svg',
                        bwCon: _bwConPrintingBinding,
                        colorCon: _colorConPrintingBinding,
                        bwFn: _bwFnPrintingBinding,
                        colorFn: _colorFnPrintingBinding,
                      ),
                      buildContainer(
                        title: "Photo Printing",
                        svgPath: "photo-printing.svg",
                        bwCon: _bwConPhotoPrinting,
                        colorCon: _colorConPhotoPrinting,
                        bwFn: _bwFnPhotoPrinting,
                        colorFn: _colorFnPhotoPrinting,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300.w,
              child: FilledButton(
                onPressed: () {
                  if (_keyForm.currentState!.validate()) {
                    final newData = widget.data.copyWith(
                      store: {
                        "name": widget.data.store!["name"],
                        "status": "open",
                        "initialPrice": [
                          {
                            "name": "Regular Printing",
                            "options": [
                              {
                                "color": false,
                                "price": int.parse(
                                  _bwConRegularPrinting.text,
                                ),
                              },
                              {
                                "color": true,
                                "price": int.parse(
                                  _colorConRegularPrinting.text,
                                ),
                              },
                            ],
                          },
                          {
                            "name": "Printing & Binding",
                            "options": [
                              {
                                "color": false,
                                "price": int.parse(
                                  _bwConPrintingBinding.text,
                                ),
                              },
                              {
                                "color": true,
                                "price": int.parse(
                                  _colorConPrintingBinding.text,
                                ),
                              },
                            ],
                          },
                          {
                            "name": "Photo Printing",
                            "options": [
                              {
                                "color": false,
                                "price": int.parse(
                                  _bwConPhotoPrinting.text,
                                ),
                              },
                              {
                                "color": true,
                                "price": int.parse(
                                  _colorConPhotoPrinting.text,
                                ),
                              },
                            ],
                          }
                        ],
                      },
                    );
                    // log.f(newData.toJson());
                    context.read<RegisterCubit>().register(newData);
                  }
                },
                child: Text(Strings.of(context)!.register),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer({
    String? title,
    required String svgPath,
    required TextEditingController bwCon,
    required TextEditingController colorCon,
    required FocusNode bwFn,
    required FocusNode colorFn,
  }) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height:
                            48.0, // Set a specific height for the SvgPicture
                        child: SvgPicture.asset(
                          "assets/images/" + svgPath,
                          height: 48.0,
                        ),
                      ),
                      Text(
                        title ?? "",
                        style: theme.typography.subtitle!.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Text("Color", style: theme.typography.subtitle),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: InfoLabel(
                          label: "Black & White",
                          child: TextFormBox(
                            keyboardType: TextInputType.number,
                            style: TextStyle(height: 2, fontSize: 14.0),
                            controller: bwCon,
                            focusNode: bwFn,
                            placeholder: 'Enter your name',
                            validator: (v) {
                              if (v!.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                            onEditingComplete: () {
                              bwFn.unfocus();
                              colorFn.requestFocus();
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Text(" /paper")
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: InfoLabel(
                          label: "Black & White",
                          child: TextFormBox(
                            keyboardType: TextInputType.number,
                            style: TextStyle(height: 2, fontSize: 14.0),
                            controller: colorCon,
                            focusNode: colorFn,
                            placeholder: 'Enter your name',
                            validator: (v) {
                              if (v!.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                            onEditingComplete: () {
                              colorFn.unfocus();
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Text(" /paper")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void onWindowClose() async {
    bool isPreventClose = await windowManager.isPreventClose();
    if (isPreventClose && mounted) {
      showDialog(
        context: context,
        builder: (_) {
          return ContentDialog(
            title: const Text('Confirm close'),
            content: const Text('Are you sure you want to close this window?'),
            actions: [
              FilledButton(
                child: const Text('Yes'),
                onPressed: () {
                  Navigator.pop(context);
                  windowManager.destroy();
                },
              ),
              Button(
                child: const Text('No'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    }
  }
}
