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
            TitleWidget(),
            SearchWidget()
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

class SearchWidget extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 20),
    decoration: BoxDecoration(
        color: Color(0xFFEFEEEE),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        )
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            Icons.search,
            color: Colors.black.withAlpha(120),
          ),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                color: Colors.black.withAlpha(120),
              ),
              border: InputBorder.none,
            ),
            onChanged: (String keyword) {},
          ),
        ),
      ],
    ),
  );
}

}