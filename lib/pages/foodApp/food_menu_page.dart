import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

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
                return Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  height: 130,
                  decoration: BoxDecoration(
                      color: ColorNoob.white,
                      border: Border(
                          left: BorderSide(
                              color: ColorNoob.orange,
                              width: 6,
                              style: BorderStyle.solid))),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/images/food1.png')
                        ],
                      )
                    ],
                  ),
                );
              },),
        ),
      ),
    );
  }
}
