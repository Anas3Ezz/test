import 'package:flutter/material.dart';
import 'package:test_project/widget/cart_item.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           Expanded(
             child: ListView.builder(
              
              itemCount: 20,
              
              itemBuilder: (context, index) =>  Padding(
                padding: const EdgeInsets.all(8.0),
                child: CartItem(),
              ),),
           ),
           ElevatedButton(onPressed: (){
            showModalBottomSheet(context: context, builder: (context) {
              return Column(
                children: [
               Padding(
                 padding: const EdgeInsets.all(25.0),
                 child: Row(
                  children: [
                    Text('Check out'),
                    Spacer(),
                    Icon(Icons.delete)
                  ],
                 ),
               )
              ],);
            },);
           }, child: Text('Go to check out')),
           SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
