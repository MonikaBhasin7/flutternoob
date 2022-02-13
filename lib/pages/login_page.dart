import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var containerPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Color.fromARGB(255, 255, 100, 89),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            containerPressed = true;
            setState(() {});
          },
          child: AnimatedContainer(
              width: containerPressed ? 50 : 100,
              height: 100,
              color: Colors.blue,
              duration: const Duration(seconds: 1),
              alignment: Alignment.center,
              child: containerPressed
                  ? const Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : const Center(
                      child: Text("Login Screen"),
                    )),
        ),
      ),
    );
  }
}
