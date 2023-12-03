import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/ui/register/cubit/register_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/models/address/address_model.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  /// Controller
  late TextEditingController _conName;
  late TextEditingController _conEmail;
  late TextEditingController _conPhone;
  late TextEditingController _conPassword;
  late TextEditingController _conConfirmPassword;
  late TextEditingController _conStreet;
  late TextEditingController _conCity;
  late TextEditingController _conState;
  late TextEditingController _conCountry;
  late TextEditingController _conZipcode;

  /// Focus Node
  late FocusNode _fnName;
  late FocusNode _fnEmail;
  late FocusNode _fnPhone;
  late FocusNode _fnPassword;
  late FocusNode _fnConfirmPassword;
  late FocusNode _fnStreet;
  late FocusNode _fnCity;
  late FocusNode _fnState;
  late FocusNode _fnCountry;
  late FocusNode _fnZipcode;

  /// Global key form
  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    // Controller
    _conName = TextEditingController();
    _conEmail = TextEditingController();
    _conPhone = TextEditingController();
    _conPassword = TextEditingController();
    _conConfirmPassword = TextEditingController();
    _conStreet = TextEditingController();
    _conCity = TextEditingController();
    _conState = TextEditingController();
    _conCountry = TextEditingController();
    _conZipcode = TextEditingController();

    // Focus Node
    _fnName = FocusNode();
    _fnEmail = FocusNode();
    _fnPhone = FocusNode();
    _fnPassword = FocusNode();
    _fnConfirmPassword = FocusNode();
    _fnStreet = FocusNode();
    _fnCity = FocusNode();
    _fnState = FocusNode();
    _fnCountry = FocusNode();
    _fnZipcode = FocusNode();

    // dummy data
    _conName.text = "Vio";
    _conEmail.text = "vio@gmail.com";
    _conPassword.text = "password";
    _conConfirmPassword.text = "password";
    _conStreet.text = "Jl. Ketiintang No. 123";
    _conCity.text = "Surabaya";
    _conState.text = "Jawa Timur";
    _conCountry.text = "Indonesia";
    _conZipcode.text = "60231";
    _conPhone.text = "081234567890";
    super.initState();
  }

  @override
  void dispose() {
    _conName.dispose();
    _conEmail.dispose();
    _conPhone.dispose();
    _conPassword.dispose();
    _conConfirmPassword.dispose();
    _conStreet.dispose();
    _conCity.dispose();
    _conState.dispose();
    _conCountry.dispose();
    _conZipcode.dispose();
    _fnName.dispose();
    _fnEmail.dispose();
    _fnPhone.dispose();
    _fnPassword.dispose();
    _fnConfirmPassword.dispose();
    _fnStreet.dispose();
    _fnCity.dispose();
    _fnState.dispose();
    _fnCountry.dispose();
    _fnZipcode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      // appBar: const MyAppBar().call(),
      child: BlocListener<RegisterCubit, RegisterState>(
        listener: (_, state) {
          state.whenOrNull(
            loading: () => context.show(),
            success: (data) {
              context.dismiss();
              context.pop();
              "Register Success".toToastSuccess(context);
            },
            failure: (message) {
              context.dismiss();
              message.toToastError(context);
            },
          );
        },
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Dimens.space36,
                ),
                Center(
                  child: SvgPicture.asset(
                    'assets/images/sign-up.svg',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: Dimens.space24,
                    top: Dimens.space16,
                    bottom: Dimens.space8,
                  ),
                  child: Text(
                    Strings.of(context)!.register,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(Dimens.space16),
                  color: Theme.of(context).extension<LzyctColors>()!.card,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimens.space16),
                    child: Form(
                      key: _keyForm,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: 'John Doe',
                            hint: Strings.of(context)!.name,
                            validator: (String? value) => value != null
                                ? (value.isEmpty
                                    ? Strings.of(context)?.error_empty_field
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
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: 'johndoe@gmail.com',
                            hint: Strings.of(context)!.email,
                            validator: (String? value) => value != null
                                ? (!value.isValidEmail()
                                    ? Strings.of(context)?.error_invalid_email
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
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: '+62 812 3456 7890',
                            hint: Strings.of(context)!.phone,
                            validator: (String? value) => value != null
                                ? (value.isEmpty
                                    ? Strings.of(context)?.error_empty_field
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
                                            ? Strings.of(context)!
                                                .error_password_length
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
                                    hint: Strings.of(context)!.confirm_password,
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
                                                ?.error_password_not_match
                                            : null)
                                        : null,
                                    semantic: "confirm_password",
                                  ),
                                ],
                              );
                            },
                          ),
                          TextF(
                            key: const Key("street"),
                            curFocusNode: _fnStreet,
                            nextFocusNode: _fnCity,
                            textInputAction: TextInputAction.next,
                            controller: _conStreet,
                            keyboardType: TextInputType.text,
                            prefixIcon: Icon(
                              Icons.location_on_outlined,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: 'Jl. Ketintang No. 123',
                            hint: Strings.of(context)!.street,
                            validator: (String? value) => value != null
                                ? (value.isEmpty
                                    ? Strings.of(context)?.error_empty_field
                                    : null)
                                : null,
                          ),
                          TextF(
                            key: const Key("city"),
                            curFocusNode: _fnCity,
                            nextFocusNode: _fnState,
                            textInputAction: TextInputAction.next,
                            controller: _conCity,
                            keyboardType: TextInputType.text,
                            prefixIcon: Icon(
                              Icons.location_city,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: 'Surabaya',
                            hint: Strings.of(context)!.city,
                            validator: (String? value) => value != null
                                ? (value.isEmpty
                                    ? Strings.of(context)?.error_empty_field
                                    : null)
                                : null,
                          ),
                          TextF(
                            key: const Key("state"),
                            curFocusNode: _fnState,
                            nextFocusNode: _fnCountry,
                            textInputAction: TextInputAction.next,
                            controller: _conState,
                            keyboardType: TextInputType.text,
                            prefixIcon: Icon(
                              Icons.location_city_outlined,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: 'Jawa Timur',
                            hint: Strings.of(context)!.state,
                            validator: (String? value) => value != null
                                ? (value.isEmpty
                                    ? Strings.of(context)?.error_empty_field
                                    : null)
                                : null,
                          ),
                          TextF(
                            key: const Key("country"),
                            curFocusNode: _fnCountry,
                            nextFocusNode: _fnZipcode,
                            textInputAction: TextInputAction.next,
                            controller: _conCountry,
                            keyboardType: TextInputType.text,
                            prefixIcon: Icon(
                              Icons.location_city_outlined,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: 'Indonesia',
                            hint: Strings.of(context)!.country,
                            validator: (String? value) => value != null
                                ? (value.isEmpty
                                    ? Strings.of(context)?.error_empty_field
                                    : null)
                                : null,
                          ),
                          TextF(
                            key: const Key("zipcode"),
                            curFocusNode: _fnZipcode,
                            textInputAction: TextInputAction.done,
                            controller: _conZipcode,
                            keyboardType: TextInputType.number,
                            prefixIcon: Icon(
                              Icons.location_city_outlined,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: '60231',
                            hint: Strings.of(context)!.zipcode,
                            validator: (String? value) => value != null
                                ? (value.isEmpty
                                    ? Strings.of(context)?.error_empty_field
                                    : null)
                                : null,
                          ),
                          const SpacerV(),
                          ButtonText(
                            color: Colors.black,
                            fontSize: Dimens.titleMedium,
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
                                        confirmPassword:
                                            _conConfirmPassword.text,
                                        address: AddressModel(
                                          street: _conStreet.text,
                                          city: _conCity.text,
                                          state: _conState.text,
                                          country: _conCountry.text,
                                          zipCode: _conZipcode.text,
                                        ),
                                        role: "customer",
                                        phone: _conPhone.text,
                                      ),
                                    );
                              }
                            },
                          ),
                          const SpacerV(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
