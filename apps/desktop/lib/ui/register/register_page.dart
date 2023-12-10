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
import 'package:sky_printing_domain/sky_printing_domain.dart';
import 'package:window_manager/window_manager.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with WindowListener {
  /// Controller
  final _conUserName = TextEditingController();
  final _conStoreName = TextEditingController();
  final _conPhone = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conConfirmPassword = TextEditingController();
  final _conStreet = TextEditingController();
  final _conCity = TextEditingController();
  final _conState = TextEditingController();
  final _conCountry = TextEditingController();
  final _conZipCode = TextEditingController();

  /// Focus Node
  final _fnUserName = FocusNode();
  final _fnStoreName = FocusNode();
  final _fnPhone = FocusNode();
  final _fnEmail = FocusNode();
  final _fnPassword = FocusNode();
  final _fnConfirmPassword = FocusNode();
  final _fnStreet = FocusNode();
  final _fnCity = FocusNode();
  final _fnState = FocusNode();
  final _fnCountry = FocusNode();
  final _fnZipCode = FocusNode();

  /// Global key form
  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    // dummy data
    _conUserName.text = "Rahmat Hidayatullah";
    _conStoreName.text = "Rahmat Store";
    _conStreet.text = "Jl. Raya Bogor";
    _conCity.text = "Mojokerto";
    _conState.text = "East Java";
    _conCountry.text = "Indonesia";
    _conZipCode.text = "12345";
    _conEmail.text = "rahmat@gmail.com";
    _conPassword.text = "password";
    _conConfirmPassword.text = "password";
    _conPhone.text = "081234567890";
    super.initState();
  }

  @override
  void dispose() {
    _conUserName.dispose();
    _conStoreName.dispose();
    _conPhone.dispose();
    _conEmail.dispose();
    _conPassword.dispose();
    _conConfirmPassword.dispose();
    _conStreet.dispose();
    _conCity.dispose();
    _conState.dispose();
    _conCountry.dispose();
    _conZipCode.dispose();

    _fnUserName.dispose();
    _fnStoreName.dispose();
    _fnPhone.dispose();
    _fnEmail.dispose();
    _fnPassword.dispose();
    _fnConfirmPassword.dispose();
    _fnStreet.dispose();
    _fnCity.dispose();
    _fnState.dispose();
    _fnCountry.dispose();
    _fnZipCode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<ThemeBloc>();
    final theme = FluentTheme.of(context);
    final width = MediaQuery.of(context).size.width;
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (_, state) {
        state.whenOrNull(
          loading: () => context.show(),
          success: (data) {
            context.dismiss();

            /// back to login page after register success
            context.pop();
          },
          failure: (message) {
            context.dismiss();
            message.toToastError(context);
          },
        );
      },
      child: NavigationView(
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
                '${Constants.get.appName} - ${Strings.of(context)!.register}',
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
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSingleSide(
              context,
              theme,
              width / 2.09,
              [
                SvgPicture.asset(
                  'assets/images/sign-up.svg',
                  height: 421.h,
                ),
                SizedBox(height: 42.h),
                Text(
                  "Store",
                  style: theme.typography.bodyLarge!.copyWith(
                    fontSize: 32.sp,
                  ),
                ),
                Text(
                  "Registration",
                  style: theme.typography.title!.copyWith(
                    fontSize: 42.sp,
                  ),
                ),
              ],
            ),
            Card(
              child: buildSingleSide(
                context,
                theme,
                width / 2,
                [
                  Text(
                    "Store Information",
                    style: theme.typography.title!.copyWith(
                      fontSize: 32.sp,
                    ),
                  ),
                  Text(
                    "Fill your Store information with correctly",
                    style: theme.typography.bodyLarge!.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimens.space16),
                    child: buildForm(),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: Dimens.space16),
                    width: 300.w,
                    child: FilledButton(
                      child: Text("Next"),
                      onPressed: () {
                        if (_keyForm.currentState!.validate()) {
                          context.pushNamed(Routes.storePricing.name,
                              extra: StoreRegisterParams(
                                user: {
                                  "name": _conUserName.text,
                                  "email": _conEmail.text,
                                  "password": _conPassword.text,
                                  "confirmPassword": _conConfirmPassword.text,
                                  "phone": _conPhone.text,
                                  "role": "seller",
                                  "address": {
                                    "street": _conStreet.text,
                                    "city": _conCity.text,
                                    "state": _conState.text,
                                    "country": _conCountry.text,
                                    "zipCode": _conZipCode.text,
                                  }
                                },
                                store: {
                                  "name": _conStoreName.text,
                                  "status": "open",
                                },
                              ));
                        }
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildForm() {
    return AutofillGroup(
      child: Form(
        key: _keyForm,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  InfoLabel(
                    label: Strings.of(context)!.user_name,
                    labelStyle: TextStyle(fontSize: 16.sp),
                    child: TextFormBox(
                      style: TextStyle(height: 2, fontSize: 14.sp),
                      controller: _conUserName,
                      focusNode: _fnUserName,
                      placeholder: 'Enter your name',
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _fnUserName.unfocus();
                        _fnStoreName.requestFocus();
                      },
                    ),
                  ),
                  SizedBox(height: 16.h),
                  InfoLabel(
                    label: 'Store Name',
                    labelStyle: TextStyle(fontSize: 16.sp),
                    child: TextFormBox(
                      style: TextStyle(height: 2, fontSize: 14.sp),
                      controller: _conStoreName,
                      focusNode: _fnStoreName,
                      placeholder: 'Enter your store name',
                      validator: (v) {
                        if (v!.isEmpty) {
                          return Strings.of(context)!.store_name_empty;
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _fnStoreName.unfocus();
                        _fnPhone.requestFocus();
                      },
                    ),
                  ),
                  SizedBox(height: 16.h),
                  InfoLabel(
                    label: 'Phone',
                    labelStyle: TextStyle(fontSize: 16.sp),
                    child: TextFormBox(
                      style: TextStyle(height: 2, fontSize: 14.sp),
                      controller: _conPhone,
                      focusNode: _fnPhone,
                      placeholder: 'Enter your phone number',
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _fnPhone.unfocus();
                        _fnEmail.requestFocus();
                      },
                    ),
                  ),
                  SizedBox(height: 16.h),
                  InfoLabel(
                    label: 'Email',
                    labelStyle: TextStyle(fontSize: 16.sp),
                    child: TextFormBox(
                      style: TextStyle(height: 2, fontSize: 14.sp),
                      controller: _conEmail,
                      focusNode: _fnEmail,
                      placeholder: 'Enter your email',
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _fnEmail.unfocus();
                        _fnPassword.requestFocus();
                      },
                    ),
                  ),
                  SizedBox(height: 16.h),
                  InfoLabel(
                    label: 'Password',
                    labelStyle: TextStyle(fontSize: 16.sp),
                    child: TextFormBox(
                      controller: _conPassword,
                      focusNode: _fnPassword,
                      placeholder: 'Enter your password',
                      obscureText: true,
                      style: TextStyle(height: 2, fontSize: 14.sp),
                      suffix: IconButton(
                        icon: Icon(
                          FluentIcons.key_phrase_extraction,
                        ),
                        onPressed: () {},
                      ),
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _fnPassword.unfocus();
                        _fnConfirmPassword.requestFocus();
                      },
                    ),
                  ),
                  SizedBox(height: 16.h),
                  InfoLabel(
                    label: 'Confirm Password',
                    labelStyle: TextStyle(fontSize: 16.sp),
                    child: TextFormBox(
                      controller: _conConfirmPassword,
                      focusNode: _fnConfirmPassword,
                      placeholder: 'Enter your confirm password',
                      obscureText: true,
                      style: TextStyle(height: 2, fontSize: 14.sp),
                      suffix: IconButton(
                        icon: Icon(
                          FluentIcons.key_phrase_extraction,
                        ),
                        onPressed: () {},
                      ),
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'Please enter your confirm password';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _fnConfirmPassword.unfocus();
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 32.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Store Address",
                      style: FluentTheme.of(context).typography.bodyLarge!),
                  SizedBox(height: 8.h),
                  InfoLabel(
                    label: 'Street',
                    labelStyle: TextStyle(fontSize: 16.sp),
                    child: TextFormBox(
                      style: TextStyle(height: 2, fontSize: 14.sp),
                      controller: _conStreet,
                      focusNode: _fnStreet,
                      placeholder: 'Enter your street',
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'Please enter your street';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _fnStreet.unfocus();
                        _fnCity.requestFocus();
                      },
                    ),
                  ),
                  SizedBox(height: 16.h),
                  InfoLabel(
                    label: 'City',
                    labelStyle: TextStyle(fontSize: 16.sp),
                    child: TextFormBox(
                      style: TextStyle(height: 2, fontSize: 14.sp),
                      controller: _conCity,
                      focusNode: _fnCity,
                      placeholder: 'Enter your city',
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'Please enter your city';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _fnCity.unfocus();
                        _fnState.requestFocus();
                      },
                    ),
                  ),
                  SizedBox(height: 16.h),
                  InfoLabel(
                    label: 'State',
                    labelStyle: TextStyle(fontSize: 16.sp),
                    child: TextFormBox(
                      style: TextStyle(height: 2, fontSize: 14.sp),
                      controller: _conState,
                      focusNode: _fnState,
                      placeholder: 'Enter your state',
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'Please enter your state';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _fnState.unfocus();
                        _fnCountry.requestFocus();
                      },
                    ),
                  ),
                  SizedBox(height: 16.h),
                  InfoLabel(
                    label: 'Country',
                    labelStyle: TextStyle(fontSize: 16.sp),
                    child: TextFormBox(
                      style: TextStyle(height: 2, fontSize: 14.sp),
                      controller: _conCountry,
                      focusNode: _fnCountry,
                      placeholder: 'Enter your country',
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'Please enter your country';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _fnCountry.unfocus();
                        _fnZipCode.requestFocus();
                      },
                    ),
                  ),
                  SizedBox(height: 16.h),
                  InfoLabel(
                    label: 'Zip Code',
                    labelStyle: TextStyle(fontSize: 16.sp),
                    child: TextFormBox(
                      keyboardType: TextInputType.number,
                      style: TextStyle(height: 2, fontSize: 14.sp),
                      controller: _conZipCode,
                      focusNode: _fnZipCode,
                      placeholder: 'Enter your zip code',
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'Please enter your zip code';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        _fnZipCode.unfocus();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSingleSide(
    BuildContext context,
    FluentThemeData theme,
    double width,
    List<Widget> children,
  ) {
    return Container(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
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
