import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: _GenderCard(
                    isTapped: isMale,
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },

                    icon: Icons.male,
                    label: 'Male',
                  ),
                ),
                Expanded(
                  child: _GenderCard(
                    isTapped: !isMale,
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
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
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$height',
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
                    child:  Slider(

                      value: height.toDouble(),
                      min: 100,
                      max: 250,
                      onChanged: (v){
                        setState(() {
                          height = v.round();
                        });

                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children:  [
                Expanded(
                  child: _CounterCard(
                    
                    label: 'Weight', value: '$weight',
                     decrese: () {  
                     setState(() {
                      if (weight > 0) {
                          weight --;
                      }
                     });
                     }, 
                     increse: () { 
                      setState(() {
                        weight++;
                      });
                      },),
                ),
                Expanded(
                  child: _CounterCard(
                    
                    label: 'Age', value: '$age', 
                     decrese: () {  
                     setState(() {
                       if (age > 5) {
                         age--;
                       }
                     });
                     }, 
                     increse: () { 
                      setState(() {
                        age++;
                      });
                      }
                      ),
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

class _CounterCard extends StatelessWidget {
  final String label;
  final String value;
  final void Function()? decrese;
  final void Function()? increse;


  const _CounterCard({required this.label, required this.value,required this.decrese,required this.increse});

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
            children:  [
              _RoundIconButton(
                onTap: decrese,
           
                icon: Icons.remove),
              _RoundIconButton(
                onTap : increse,
                icon: Icons.add),
            ],
          ),
        ],
      ),
    );
  }
}

class _RoundIconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  const _RoundIconButton({required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: const BoxDecoration(
        color: Color(0xFF4C4F5E),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon, color: Colors.white, size: 18),
      ),
    );
  }
}
