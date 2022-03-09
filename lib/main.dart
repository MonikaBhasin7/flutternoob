import 'package:flutter/material.dart';
import 'package:flutternoob/pages/food/menu_page.dart';
import 'package:flutternoob/pages/foodApp/cart_page.dart';
import 'package:flutternoob/pages/foodApp/food_home_page.dart';
import 'package:flutternoob/pages/home_page.dart';
import 'package:flutternoob/pages/list_page.dart';
import 'package:flutternoob/pages/login_page.dart';
import 'package:flutternoob/pages/transactions_page.dart';
import 'package:flutternoob/pages/try.dart';
import 'package:flutternoob/providers/cart_notifier.dart';
import 'package:flutternoob/providers/food_tab_notifier.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CartNotifier(),
        ),
        ChangeNotifierProvider(
          create: (_) => FoodTabNotifier(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: "/cart_page",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/list": (context) => ListPage(),
        "/try": (context) => TryPage(),
        "/transaction": (context) => TransactionPage(),
        "/menu_page": (context) => MenuPage(),
        "/food_home_page" : (context) => FoodHomePage(),
        "/cart_page" : (context) => CartPage()
      },
      // theme: ThemeData(
      //     primarySwatch: Colors.blue, textTheme: GoogleFonts.latoTextTheme()),
    );
  }
}

