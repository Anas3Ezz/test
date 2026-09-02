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

class _GenderCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function()? onTap;
  final bool isTapped;

  const _GenderCard({
    required this.icon,
    required this.label,
    required this.onTap,
    required this.isTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: isTapped ? Colors.red : Colors.transparent),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80, color: Colors.white),
            const SizedBox(height: 15),
            Text(label, style: kLabelTextStyle),
          ],
        ),
      ),
    );
  }
}