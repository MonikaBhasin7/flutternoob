import 'package:flutter/material.dart';
import 'package:flutternoob/utils/colors.dart';

class TryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Try"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: 120,
              height: 30,
              color: ColorNoob.light_purple,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Text("Hare Krsna"),
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'Hello ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' world!'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue.shade500,
                height: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
/**
 * 
 */