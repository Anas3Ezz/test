import 'package:flutter/material.dart';
import 'package:test_project/screens/widgets/list_tile_card.dart';
import 'package:test_project/screens/widgets/profile_image.dart';
import 'package:test_project/screens/widgets/profile_info.dart';
import 'package:test_project/screens/widgets/social_mdeia_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            ProfileImage(),
            SizedBox(height: 30),
            ProfileInfo(),
            SizedBox(height: 30),

            ListTileCard(),

            SizedBox(height: 30),

            ListTileCard(),

            SizedBox(height: 30),
            ListTileCard(),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaIcon(),
                SizedBox(width: 20),
                SocialMediaIcon(),

                SizedBox(width: 20),

                SocialMediaIcon(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
