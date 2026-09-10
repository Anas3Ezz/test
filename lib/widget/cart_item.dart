
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/images/pepper.png'),
      title: Text('Bell Pepper Red'),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("1kg, Price"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.remove),
              SizedBox(width: 10),
              Text('1'),
              SizedBox(width: 10),
    
              Icon(Icons.add),
            ],
          ),
        ],
      ),
      trailing: Column(
        children: [
          Icon(Icons.delete),
          Spacer(),
          Text(r'$4.99')
        ],
      ),
    );
  }
}
