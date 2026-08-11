
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 105,
        backgroundColor: Colors.yellow,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile.png'),
          radius: 100,
          backgroundColor: Colors.yellow,
        ),
      ),
    );
  }
}