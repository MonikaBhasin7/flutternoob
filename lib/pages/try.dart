import 'package:flutter/material.dart';
import 'package:flutternoob/utils/colors.dart';

class TryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Try"),
      ),
      body: Container(
        width: 120,
        height: 30,
        color: ColorNoob.light_purple,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Text("Hare Krsna"),
        ),
      ),
    );
  }
}
/**
 * 
 */