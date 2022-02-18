import 'package:flutter/material.dart';
import 'package:flutternoob/pages/home_page.dart';
import 'package:flutternoob/pages/list_page.dart';
import 'package:flutternoob/pages/login_page.dart';
import 'package:flutternoob/pages/try.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: "/try",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/list": (context) => ListPage(),
        "/try": (context) => TryPage()
      },
      theme: ThemeData(
          primarySwatch: Colors.blue, textTheme: GoogleFonts.latoTextTheme()),
    );
  }
}
