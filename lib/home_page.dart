import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Color.fromARGB(255, 255, 100, 89),
      ),
      body: Center(
        child: Container(
          child: const Text("Hare Krsna"),
        ),
      ),
    );
  }
}
