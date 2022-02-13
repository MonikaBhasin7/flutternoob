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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text("Hare Krsna"),
          ),
          Container(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              child: Text("Go to Login Screen"),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: Text("Hare Krsna"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            alignment: Alignment.center,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Username", labelText: "Username"),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login"))
        ],
      )),
    );
  }
}
