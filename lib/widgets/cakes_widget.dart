import 'package:flutter/material.dart';
import 'package:flutternoob/utils/colors.dart';

import '../models/cakes.dart';

class CakesWidget extends StatelessWidget {
  Cakes? cake;

  CakesWidget({Cakes? this.cake});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
          color: ColorNoob.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: ColorNoob.medium_purple,
            width: 2.0,
            style: BorderStyle.solid,
          )),
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text("cake photo"),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text("Cake"),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text("cake"),
              )
            ],
          ),
          new Spacer(),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text("notification"),
          )
        ],
      ),
    );
  }
}
