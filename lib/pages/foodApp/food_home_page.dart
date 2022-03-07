import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FoodToolbarWidget(),
            TitleWidget()
          ],
        ),
      ),
    );
  }
}

class FoodToolbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Delicious\nfood for you", style: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.bold
    ));
  }

}