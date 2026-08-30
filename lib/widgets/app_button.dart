import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

  final String title;
  const AppButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(onPressed: () {


              }, child: Text(title));
  }
}