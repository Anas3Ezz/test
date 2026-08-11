import 'package:flutter/material.dart';
import 'package:test_project/screens/basketball_screen/widgets/app_button.dart';

class BasketBallScreen extends StatefulWidget {
  const BasketBallScreen({super.key});

  @override
  State<BasketBallScreen> createState() => _BasketBallScreenState();
}

class _BasketBallScreenState extends State<BasketBallScreen> {
  int teamAScore = 0;
  int teamBScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 33, 74),
        leading: Icon(Icons.menu, color: Colors.white),
        title: const Text(
          'BasketBall Counter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamAScore',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      AppButton(
                        title: '+31points',
                        onPressed: () {
                          setState(() {
                            teamAScore += 1;
                          });
                        },
                      ),

                      SizedBox(height: 20),
                      AppButton(
                        title: '+2 points',
                        onPressed: () {
                          setState(() {
                            teamAScore += 2;
                          });
                        },
                      ),
                      SizedBox(height: 20),

                      AppButton(
                        title: '+3 points',
                        onPressed: () {
                          setState(() {
                            teamAScore += 3;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                VerticalDivider(thickness: 3),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamBScore',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      AppButton(
                        title: '+1 points',
                        onPressed: () {
                          setState(() {
                            teamBScore += 1;
                          });
                        },
                      ),

                      SizedBox(height: 20),
                      AppButton(
                        title: '+2 points',
                        onPressed: () {
                          setState(() {
                            teamBScore += 2;
                          });
                        },
                      ),
                      SizedBox(height: 20),

                      AppButton(
                        title: '+3 points',
                        onPressed: () {
                          setState(() {
                            teamBScore += 3;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          AppButton(
            title: 'Rest',
            buttonColor: Colors.red,
            onPressed: () {
              setState(() {
                teamAScore = 0;
                teamBScore = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}
