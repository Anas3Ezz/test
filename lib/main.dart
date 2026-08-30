import 'package:flutter/material.dart';
import 'package:test_project/screens/bmi/bmi_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BMIScreen(),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            IconButton(onPressed: () {
             setState(() {
                counter--;
             });
            }, icon: Icon(Icons.remove)),
            Text('$counter'),
            IconButton(onPressed: () {
            setState(() {
                counter++;
            });
            }, icon: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
//hardcoded