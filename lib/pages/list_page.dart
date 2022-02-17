import 'package:flutter/material.dart';
import 'package:flutternoob/models/cakes.dart';
import 'package:flutternoob/utils/colors.dart';
import 'package:flutternoob/widgets/cakes_widget.dart';
import 'package:flutternoob/widgets/drawer_widget.dart';

class ListPage extends StatelessWidget {
  List<Cakes> cakesList = <Cakes>[];
  @override
  Widget build(BuildContext context) {
    var cake = Cakes.initializeObject("1", "image", "name", "rating");
    cakesList.add(cake);
    return Scaffold(
      appBar: AppBar(
        title: Text("List Screen"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: ColorNoob.light_purple,
        ),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return CakesWidget(cake: cakesList[index]);
            }),
      ),
    );
  }
}
