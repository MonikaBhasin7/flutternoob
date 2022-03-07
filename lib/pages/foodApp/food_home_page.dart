import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 50, 25, 25),
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
        Image.asset('assets/images/hamburg.png'),
        Image.asset('assets/images/shopping-cart.png')
      ],
    );
  }
}

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
      child: Text("Delicious\nfood for you", style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold
      )),
    );
  }

}