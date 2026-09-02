import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_project/core/widgets/custom_textformfeild.dart';

const kBackgroundColor = Color(0xFF0A0E21);
const kCardColor = Color(0xFF1D1E33);
const kActiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1555);
const kLabelTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  int height = 150;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kActiveCardColor,
        elevation: 0,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          
              
                 SizedBox(height: 50,),

       CustomTextFormField(),
       SizedBox(height: 100,),
        ],
      ),
    );
  }
}
