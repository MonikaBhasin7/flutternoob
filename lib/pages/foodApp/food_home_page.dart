import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutternoob/providers/food_tab_notifier.dart';
import 'package:flutternoob/utils/colors.dart';
import 'package:provider/provider.dart';

import '../../models/cakes.dart';
import '../../widgets/cakes_widget.dart';

class FoodHomePage extends StatefulWidget {
  @override
  State<FoodHomePage> createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
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
            SearchWidget(),
            TabWidget(),
            SizedBox(
              height: 50,
            ),
            HomePageFoodListWidget()
            //Text("${context.watch<FoodTabNotifier>().getFoodType}")
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
      children: [
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
      child: Text("Delicious\nfood for you",
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
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
          )),
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

class TabWidget extends StatefulWidget {
  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    _tabController?.addListener(() {
      context.read<FoodTabNotifier>().setFoodType("${_tabController?.index}");
      print("Tab Listener - ${_tabController?.index}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      unselectedLabelColor: Colors.black,
      labelColor: Colors.red,
      tabs: const [
        Tab(
          text: "Foods",
        ),
        Tab(
          text: "Drinks",
        ),
        Tab(
          text: "Snacks",
        ),
        Tab(
          text: "Sauces",
        ),
        Tab(
          text: "Juices",
        ),
        Tab(
          text: "Dessert",
        ),
      ],
      controller: _tabController,
      indicatorColor: ColorNoob.orange,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 3,
    );
  }
}

class HomePageFoodListWidget extends StatefulWidget {
  @override
  State<HomePageFoodListWidget> createState() => _HomePageFoodListWidgetState();
}

class _HomePageFoodListWidgetState extends State<HomePageFoodListWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return FoodItemWidget();
          }),
    );
  }
}

class FoodItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        width: 221,
        duration: const Duration(seconds: 2),
        decoration: BoxDecoration(
            color: ColorNoob.white,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            )),
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: -30,
              child: Image.asset('assets/images/food1.png'),
            ),
            Positioned(
                bottom: 30,
                child: Column(
                  children: [
                    Text(
                      "Veggie Tomato Mix",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Rs 1000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: ColorNoob.orange),
                    ),
                  ],
                ))
          ],
        ));
  }
}
