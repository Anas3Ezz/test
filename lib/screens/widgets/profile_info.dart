
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Bebem4',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        
        SizedBox(height: 30),
        Text(
          'Bebem4',
          style: TextStyle(
            fontSize: 30,
            color: Colors.yellow,
            fontWeight: FontWeight.w500,
          ),
        ),
        
        Divider(
          color: Colors.yellow,
          thickness: 2,
          endIndent: 50,
          indent: 50,
        ),
      ],
    );
  }
}
