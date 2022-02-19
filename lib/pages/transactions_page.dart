import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBar(),
            BalanceWidget(width, height),
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
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 80, 0, 0),
        ),
        const CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
              "https://avatars.githubusercontent.com/u/42547879?s=400&u=4cbb070ee935e2a93075367c4653bc01c7795b46&v=4"),
        ),
        const Spacer(),
        Container(
          alignment: Alignment.centerRight,
          child: const Icon(
            Icons.search,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          alignment: Alignment.topRight,
          child: Icon(Icons.notifications_none),
        )
      ],
    );
  }
}

class BalanceWidget extends StatelessWidget {
  double width;
  double height;

  BalanceWidget(this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                width: width * 0.7,
                child: const Text(
                  "Hi Marcus,",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const Divider(
                height: 5,
              ),
              SizedBox(
                width: width * 0.7,
                child: const Text(
                  "What do you want to do today?",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          Icon(
            Icons.auto_graph_outlined,
            size: 30,
          )
        ],
      ),
    );
  }
}
