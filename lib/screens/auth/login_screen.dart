import 'package:flutter/material.dart';
import 'package:test_project/widgets/app_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Container(
        child: Center(
          child:    AppButton(title: 'Login',),
        ),
      ),
    );
  }
}