
import 'package:flutter/material.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
      
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow,
          child: Icon(Icons.phone, color: Colors.black),
        ),
        title: Text(
          '+1 123 456 7890',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        subtitle: Text(
          'Phone Number',
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
