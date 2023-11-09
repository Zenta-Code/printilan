import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/modules/login/domain/usecases/post_login.dart';
import 'package:sky_printing/modules/login/ui/cubit/login_cubit.dart';
import 'package:sky_printing/utils/ext/ext.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
    // dummy data
    _conEmail.text = "rahmat@gmail.com";
    _conPassword.text = "password";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: BlocListener<LoginCubit, LoginState>(
        listener: (_, state) {
          state.whenOrNull(
            loading: () => context.show(),
            success: (data) {
              context.dismiss();
              data.toString().toToastSuccess(context);
              TextInput.finishAutofillContext();
              context.goNamed(Routes.dashboard.name);
            },
            failure: (message) {
              context.dismiss();
              message.toToastError(context);
            },
          );
        },
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(Dimens.space12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/sign-in.svg',
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: Dimens.space24,
                        top: Dimens.space16,
                        bottom: Dimens.space8,
                      ),
                      child: Text(
                        Strings.of(context)!.login,
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  ),
                  Card(
                    color: Theme.of(context).extension<LzyctColors>()!.card,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimens.space16),
                      child: AutofillGroup(
                        child: Form(
                          key: _keyForm,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SpacerV(),
                              TextF(
                                autofillHints: const [AutofillHints.email],
                                key: const Key("email"),
                                curFocusNode: _fnEmail,
                                nextFocusNode: _fnPassword,
                                textInputAction: TextInputAction.next,
                                controller: _conEmail,
                                keyboardType: TextInputType.emailAddress,
                                prefixIcon: Icon(
                                  Icons.alternate_email,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.color,
                                ),
                                hintText: "johndoe@gmail.com",
                                hint: Strings.of(context)!.email,
                                validator: (String? value) => value != null
                                    ? (!value.isValidEmail()
                                        ? Strings.of(context)
                                            ?.error_invalid_email
                                        : null)
                                    : null,
                              ),
                              BlocBuilder<LoginCubit, LoginState>(
                                builder: (_, state) {
                                  return TextF(
                                    autofillHints: const [
                                      AutofillHints.password
                                    ],
                                    key: const Key("password"),
                                    curFocusNode: _fnPassword,
                                    textInputAction: TextInputAction.done,
                                    controller: _conPassword,
                                    keyboardType: TextInputType.text,
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.color,
                                    ),
                                    obscureText: context
                                            .read<LoginCubit>()
                                            .isPasswordHide ??
                                        false,
                                    hintText: '••••••••••••',
                                    maxLine: 1,
                                    hint: Strings.of(context)!.password,
                                    suffixIcon: IconButton(
                                      padding: EdgeInsets.zero,
                                      constraints: const BoxConstraints(),
                                      onPressed: () => context
                                          .read<LoginCubit>()
                                          .showHidePassword(),
                                      icon: Icon(
                                        (context
                                                    .read<LoginCubit>()
                                                    .isPasswordHide ??
                                                false)
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                      ),
                                    ),
                                    validator: (String? value) => value != null
                                        ? (value.length < 6
                                            ? Strings.of(context)!
                                                .error_password_length
                                            : null)
                                        : null,
                                  );
                                },
                              ),
                              // SpacerV(value: Dimens.space24),
                              ButtonText(
                                title: Strings.of(context)!.login,
                                onPressed: () {
                                  if (_keyForm.currentState?.validate() ??
                                      false) {
                                    context.read<LoginCubit>().login(
                                          LoginParams(
                                            email: _conEmail.text,
                                            password: _conPassword.text,
                                          ),
                                        );
                                  }
                                },
                                color: Colors.black,
                                fontSize: Dimens.titleLarge,
                              ),
                              const SpacerV(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.of(context)!.ask_register,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextButton(
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
        ),
      ),
    );
  }
}
