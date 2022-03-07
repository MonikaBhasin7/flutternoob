import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/hamburg.png'),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/shopping-cart.png'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}