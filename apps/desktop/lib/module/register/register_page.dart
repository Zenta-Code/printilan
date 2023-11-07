import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing_admin/core/core.dart'; 
import 'package:sky_printing_admin/module/register/cubit/register_cubit.dart';
import 'package:sky_printing_admin/module/register/usecase/post_register.dart';
import 'package:sky_printing_admin/utils/ext/ext.dart'; 
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  /// Controller
  final _conName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conConfirmPassword = TextEditingController();
  final _conAddress = TextEditingController();
  final _conPhone = TextEditingController();

  /// Focus Node
  final _fnName = FocusNode();
  final _fnEmail = FocusNode();
  final _fnPassword = FocusNode();
  final _fnConfirmPassword = FocusNode();
  final _fnAddress = FocusNode();
  final _fnPhone = FocusNode();

  /// Global key form
  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    // dummy data
    _conName.text = "Rahmat Hidayatullah";
    _conEmail.text = "rahmat@gmail.com";
    _conPassword.text = "password";
    _conConfirmPassword.text = "password";
    _conAddress.text = "Jl. Raya Bogor, Jakarta";
    _conPhone.text = "081234567890";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: const MyAppBar().call(),
      child: BlocListener<RegisterCubit, RegisterState>(
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
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(Dimens.space24),
              child: Form(
                key: _keyForm,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // CircleAvatar(
                    //   backgroundColor: Theme.of(context).hintColor,
                    //   radius: Dimens.profilePicture + Dimens.space4,
                    //   child: CircleAvatar(
                    //     backgroundImage: AssetImage(Images.icLauncher),
                    //     radius: Dimens.profilePicture,
                    //   ),
                    // ),
                    const SpacerV(),
                    TextF(
                      key: const Key("name"),
                      curFocusNode: _fnName,
                      nextFocusNode: _fnEmail,
                      textInputAction: TextInputAction.next,
                      controller: _conName,
                      keyboardType: TextInputType.text,
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hintText: 'John Doe',
                      hint: Strings.of(context)!.name,
                      validator: (String? value) => value != null
                          ? (value.isEmpty
                              ? Strings.of(context)?.errorEmptyField
                              : null)
                          : null,
                    ),
                    TextF(
                      key: const Key("email"),
                      curFocusNode: _fnEmail,
                      nextFocusNode: _fnPassword,
                      textInputAction: TextInputAction.next,
                      controller: _conEmail,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hintText: 'johndoe@gmail.com',
                      hint: Strings.of(context)!.email,
                      validator: (String? value) => value != null
                          ? (!value.isValidEmail()
                              ? Strings.of(context)?.errorInvalidEmail
                              : null)
                          : null,
                    ),
                    BlocBuilder<RegisterCubit, RegisterState>(
                      builder: (_, state) {
                        return Column(
                          children: [
                            TextF(
                              key: const Key("password"),
                              curFocusNode: _fnPassword,
                              nextFocusNode: _fnConfirmPassword,
                              textInputAction: TextInputAction.next,
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
                                      .read<RegisterCubit>()
                                      .isPasswordHide ??
                                  false,
                              hintText: '••••••••••••',
                              maxLine: 1,
                              hint: Strings.of(context)!.password,
                              suffixIcon: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                onPressed: () => context
                                    .read<RegisterCubit>()
                                    .showHidePassword(),
                                icon: Icon(
                                  (context
                                              .read<RegisterCubit>()
                                              .isPasswordHide ??
                                          false)
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                              validator: (String? value) => value != null
                                  ? (value.length < 6
                                      ? Strings.of(context)!.errorPasswordLength
                                      : null)
                                  : null,
                              semantic: "password",
                            ),
                            TextF(
                              key: const Key("confirm_password"),
                              curFocusNode: _fnConfirmPassword,
                              textInputAction: TextInputAction.done,
                              controller: _conConfirmPassword,
                              keyboardType: TextInputType.text,
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.color,
                              ),
                              obscureText: context
                                      .read<RegisterCubit>()
                                      .isConfirmPasswordHide ??
                                  false,
                              hintText: '••••••••••••',
                              maxLine: 1,
                              hint: Strings.of(context)!.confirmPassword,
                              suffixIcon: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                onPressed: () => context
                                    .read<RegisterCubit>()
                                    .showHideConfirmPassword(),
                                icon: Icon(
                                  (context
                                              .read<RegisterCubit>()
                                              .isConfirmPasswordHide ??
                                          false)
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                              validator: (String? value) => value != null
                                  ? (value != _conPassword.text
                                      ? Strings.of(context)
                                          ?.errorPasswordNotMatch
                                      : null)
                                  : null,
                              semantic: "confirm_password",
                            ),
                          ],
                        );
                      },
                    ),

                    TextF(
                      key: const Key("address"),
                      curFocusNode: _fnAddress,
                      nextFocusNode: _fnPhone,
                      textInputAction: TextInputAction.next,
                      controller: _conAddress,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icon(
                        Icons.home_outlined,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hintText: 'Street 1, City, Country',
                      hint: Strings.of(context)!.address,
                      validator: (String? value) => value != null
                          ? (value.isEmpty
                              ? Strings.of(context)?.errorEmptyField
                              : null)
                          : null,
                    ),
                    TextF(
                      key: const Key("phone"),
                      curFocusNode: _fnPhone,
                      textInputAction: TextInputAction.done,
                      controller: _conPhone,
                      keyboardType: TextInputType.phone,
                      prefixIcon: Icon(
                        Icons.phone_outlined,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hintText: '+62 812 3456 7890',
                      hint: Strings.of(context)!.phone,
                      validator: (String? value) => value != null
                          ? (value.isEmpty
                              ? Strings.of(context)?.errorEmptyField
                              : null)
                          : null,
                    ),

                    SpacerV(value: Dimens.space24),
                    Button(
                      key: const Key("btn_register"),
                      title: Strings.of(context)!.register,
                      onPressed: () {
                        /// Validate form first
                        if (_keyForm.currentState?.validate() ?? false) {
                          context.read<RegisterCubit>().register(
                                RegisterParams(
                                  name: _conName.text,
                                  email: _conEmail.text,
                                  password: _conPassword.text,
                                  confirmPassword: _conConfirmPassword.text,
                                  address: _conAddress.text,
                                  phone: _conPhone.text,
                                ),
                              );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
