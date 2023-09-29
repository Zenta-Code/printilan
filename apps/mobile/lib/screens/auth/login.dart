import 'package:flutter/material.dart';
import 'package:sky_printing/controllers/api/api.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String data = "Test";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data),
            TextField(
              decoration: const InputDecoration(hintText: 'Email'),
              controller: emailController,
            ),
            TextField(
              decoration: const InputDecoration(hintText: 'Password'),
              controller: passwordController,
            ),
            ElevatedButton(
              onPressed: () async {
                final res = await ApiServices().login(
                  emailController.text,
                  passwordController.text,
                );
                setState(() {
                  data = res.data.toString();
                });
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
