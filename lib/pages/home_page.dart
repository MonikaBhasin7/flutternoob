import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var typedName = "";
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
            child: const Text(
              "Hare Krsna",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  wordSpacing: 0,
                  backgroundColor: Colors.black),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
            child: Text("Go to Login Screen"),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
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
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            alignment: Alignment.center,
            child: TextFormField(
              onChanged: (value) {
                typedName = value;
                setState(() {});
              },
              decoration: const InputDecoration(
                  hintText: "Enter Username", labelText: "Username"),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login $typedName"))
        ],
      )),
    );
  }
}
