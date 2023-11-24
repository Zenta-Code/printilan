import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing_admin/ui/register/cubit/register_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

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
      child: const Center(
        child: SingleChildScrollView(
          child: Text('Setting'),
        ),
      ),
    );
  }
}
