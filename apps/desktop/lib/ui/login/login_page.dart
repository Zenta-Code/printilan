import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing_admin/core/app_route.dart';
import 'package:sky_printing_admin/core/themes/theme_bloc.dart';
import 'package:sky_printing_admin/core/widgets/window_button.dart';
import 'package:sky_printing_admin/ui/login/cubit/auth_cubit.dart';
import 'package:sky_printing_core/localization/generated/strings.dart';
import 'package:sky_printing_core/resources/dimens.dart';
import 'package:sky_printing_core/utils/ext/ext.dart';
import 'package:sky_printing_core/utils/helper/constant.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';
import 'package:window_manager/window_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with WindowListener {
  /// Controller
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();

  /// Focus Node
  final _fnEmail = FocusNode();
  final _fnPassword = FocusNode();

  /// Global key
  final _keyForm = GlobalKey<FormState>();
  @override
  void initState() {
    windowManager.addListener(this);
    _conEmail.text = "rahmat@gmail.com";
    _conPassword.text = "password";
    super.initState();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    _conEmail.dispose();
    _conPassword.dispose();
    _fnEmail.dispose();
    _fnPassword.dispose();
    _keyForm.currentState?.dispose();
    super.dispose();
  }

  final viewKey = GlobalKey(debugLabel: 'Navigation View Key');
  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<ThemeBloc>();
    final theme = FluentTheme.of(context);
    final leftPanelWidth = MediaQuery.of(context).size.width / 1.75;
    final rightPanelWidth = MediaQuery.of(context).size.width - leftPanelWidth;
    final height = MediaQuery.of(context).size.height;
    return NavigationView(
      appBar: NavigationAppBar(
        automaticallyImplyLeading: false,
        title: DragToMoveArea(
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              '${Constants.get.appName} - ${Strings.of(context)!.login}',
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
        children: [
          SizedBox(
            width: leftPanelWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/sign-in.svg',
                  width: 400.w,
                  height: 400.h,
                ),
                SizedBox(height: Dimens.space64),
                Text('Welcome to',
                    style: theme.typography.subtitle!.copyWith(
                      fontSize: Dimens.titleLarge,
                    )),
                SizedBox(height: Dimens.space8),
                Text(
                  Constants.get.appName,
                  style: theme.typography.title!.copyWith(
                    fontSize: Dimens.headlineMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: rightPanelWidth,
            child: Card(
              child: BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (data) {
                      context.dismiss();
                      displayInfoBar(context, builder: (context, close) {
                        return const InfoBar(
                          title: Text('Success!'),
                          content: Text('Successfully logged in.'),
                          severity: InfoBarSeverity.success,
                          isLong: true,
                        );
                      });
                      context.goNamed(Routes.dashboard.name);
                    },
                    loading: () => context.show(),
                    failure: (message) {
                      context.dismiss();
                      displayInfoBar(context, builder: (context, close) {
                        return InfoBar(
                          title: Text('Login Failed!'),
                          content: Text(
                              "$message. Please try again, or register if you don't have an account."),
                          action: Button(
                            onPressed: () {
                              context.goNamed(Routes.register.name);
                            },
                            child: Text('Register'),
                          ),
                          severity: InfoBarSeverity.error,
                        );
                      });
                    },
                  );
                },
                builder: (context, state) {
                  return buildLayout(
                    context: context,
                    height: height,
                    theme: theme,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLayout({
    required BuildContext context,
    required double height,
    required FluentThemeData theme,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.space64),
        child: AutofillGroup(
          child: Form(
            key: _keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SvgPicture.asset(
                    'assets/images/sky-printing.svg',
                    width: 144.w,
                    height: 144.h,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  'Sign In',
                  style: theme.typography.title!.copyWith(
                    fontSize: Dimens.headlineMedium,
                  ),
                ),
                SizedBox(height: height * 0.02),
                Text(
                  'Please sign in to continue as Seller, or if you don\'t have an account, you can create a new one.',
                  style: theme.typography.body!.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: height * 0.01),
                const Divider(),
                SizedBox(height: height * 0.01),
                InfoLabel(
                  label: 'Email',
                  child: TextFormBox(
                    controller: _conEmail,
                    focusNode: _fnEmail,
                    placeholder: 'Enter your email',
                    keyboardType: TextInputType.emailAddress,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                    onEditingComplete: () {
                      _fnEmail.unfocus();
                      FocusScope.of(context).requestFocus(_fnPassword);
                    },
                  ),
                ),
                SizedBox(height: height * 0.02),
                InfoLabel(
                  label: 'Password',
                  child: TextFormBox(
                    controller: _conPassword,
                    focusNode: _fnPassword,
                    placeholder: 'Enter your password',
                    obscureText: true,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                    onEditingComplete: () {
                      _fnPassword.unfocus();
                    },
                  ),
                ),
                SizedBox(height: height * 0.02),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: ButtonState.all(Colors.blue),
                    ),
                    onPressed: () {
                      if (_keyForm.currentState?.validate() ?? false) {
                        context.read<AuthCubit>().login(
                              LoginParams(
                                email: _conEmail.text,
                                password: _conPassword.text,
                              ),
                            );
                      }
                    },
                    child: Text(
                      'Sign In',
                      style: theme.typography.bodyLarge!.copyWith(
                        fontSize: Dimens.bodyLarge,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(Strings.of(context)!.ask_register,
                        style: theme.typography.body!.copyWith(
                          fontSize: Dimens.bodyMedium,
                        )),
                    HyperlinkButton(
                      onPressed: () {
                        context.pushNamed(Routes.register.name);
                      },
                      child: Text(Strings.of(context)!.register),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
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
