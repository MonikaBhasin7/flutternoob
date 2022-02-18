import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBar(),
          ],
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 80, 0, 0),
        ),
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
              "https://avatars.githubusercontent.com/u/42547879?s=400&u=4cbb070ee935e2a93075367c4653bc01c7795b46&v=4"),
        ),
        Spacer(),
        Container(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.search,
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
          alignment: Alignment.topRight,
          child: Icon(Icons.notifications_none),
        )
      ],
    );
  }
}
