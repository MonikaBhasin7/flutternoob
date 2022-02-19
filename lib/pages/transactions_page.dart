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
            NameWidget(width, height),
            BalanceWidget(width, height),
            GridItemWidget(0)
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

class NameWidget extends StatelessWidget {
  double width;
  double height;

  NameWidget(this.width, this.height);

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

class BalanceWidget extends StatelessWidget {
  double width;
  double height;

  BalanceWidget(this.width, this.height);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnimatedContainer(
          padding: EdgeInsets.all(5),
          duration: const Duration(seconds: 2),
          width: width * 0.47,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 100,
              minHeight: 50,
            ),
            child: RichText(
              text: const TextSpan(
                  text: "12345",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '\nChecking Account Balance',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        AnimatedContainer(
          padding: EdgeInsets.all(5),
          duration: const Duration(seconds: 2),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          width: width * 0.47,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 100,
              minHeight: 50,
            ),
            child: RichText(
              text: const TextSpan(
                  text: "12345",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '\nChecking Account Balance',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}

class GridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GridItemWidget(index);
          },
          itemCount: 2,
        ));
  }
}

class GridItemWidget extends StatelessWidget {
  int index = -1;
  GridItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        AnimatedContainer(
          duration: Duration(seconds: 2),
          width: 170,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue.shade600,
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        const Positioned(
          child: Icon(
            Icons.all_inclusive,
            size: 40,
          ),
          top: 20,
          right: 20,
        ),
        const Positioned(
          left: 12,
          bottom: 40,
          child: Text(
            "Bill Pay",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const Positioned(
          left: 12,
          bottom: 20,
          child: Text(
            "Due on May 14",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}
