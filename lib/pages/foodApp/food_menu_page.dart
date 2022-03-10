import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Text("Hare Krsna");
              },),
        ),
      ),
    );
  }
}
