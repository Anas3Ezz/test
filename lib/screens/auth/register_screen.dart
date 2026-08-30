import 'package:flutter/material.dart';
import 'package:test_project/core/widgets/app_button.dart';
import 'package:test_project/core/widgets/custom_textformfeild.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();
  final usernameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();

  @override
  void dispose() {
    usernameCtrl.dispose();
    emailCtrl.dispose();
    passwordCtrl.dispose();
    phoneCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(hintText: 'username', controller: usernameCtrl),
              SizedBox(height: 20),

              CustomTextField(hintText: 'email', controller: emailCtrl),
              SizedBox(height: 20),

              CustomTextField(hintText: 'password', controller: passwordCtrl),
              SizedBox(height: 20),

              CustomTextField(hintText: 'phone', controller: phoneCtrl),
              SizedBox(height: 20),
              AppButton(title: 'sign in',)
            ],
          ),
        ),
      ),
    );
  }
}
