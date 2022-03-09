import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternoob/utils/colors.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
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
                        child: Row(
                          children: [
                            Expanded(
                              child: Image.asset("assets/images/monika.png"),
                              flex: 3,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Bhindi Kheer",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Bhindi Kheer",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: ColorNoob.grey_text),
                                  ),
                                  Expanded(child: Text("")),
                                  Text(
                                    "10000",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              flex: 4,
                            ),
                            Expanded(
                              child: Container(
                                color: ColorNoob.medium_purple,
                              ),
                              flex: 3,
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
          Expanded(
            child: Text(
              "Cart",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
