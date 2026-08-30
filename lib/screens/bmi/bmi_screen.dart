import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF0A0E21);
const kCardColor = Color(0xFF1D1E33);
const kActiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1555);
const kLabelTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

class BMIScreen extends StatelessWidget {
  const BMIScreen({super.key});

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
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: _GenderCard(
                    icon: Icons.male,
                    label: 'Male',
                  ),
                ),
                Expanded(
                  child: _GenderCard(
                    icon: Icons.female,
                    label: 'Female',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Height', style: kLabelTextStyle),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '150',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      disabledThumbColor: Colors.white,
                      disabledActiveTrackColor: kBottomContainerColor,
                      disabledInactiveTrackColor: Colors.white,
                    ),
                    child: const Slider(
                      value: 150,
                      min: 100,
                      max: 500,
                      onChanged: null,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: _CounterCard(label: 'Weight', value: '60'),
                ),
                Expanded(
                  child: _CounterCard(label: 'Age', value: '20'),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            margin: const EdgeInsets.only(top: 15),
            color: kBottomContainerColor,
            child: const Center(
              child: Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GenderCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const _GenderCard({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color:  Colors.red),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 80, color: Colors.white),
          const SizedBox(height: 15),
          Text(label, style: kLabelTextStyle),
        ],
      ),
    );
  }
}

class _CounterCard extends StatelessWidget {
  final String label;
  final String value;

  const _CounterCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: kLabelTextStyle),
          Text(
            value,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              _RoundIconButton(icon: Icons.remove),
              _RoundIconButton(icon: Icons.add),
            ],
          ),
        ],
      ),
    );
  }
}

class _RoundIconButton extends StatelessWidget {
  final IconData icon;
  const _RoundIconButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: const BoxDecoration(
        color: Color(0xFF4C4F5E),
        shape: BoxShape.circle,
      ),
      child: IconButton(onPressed: null, icon: Icon(icon, color: Colors.white, size: 18)),
    );
  }
}
