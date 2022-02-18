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
            Wrap(
              children: [
                Container(
                  color: Colors.blue.shade700,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade800,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade900,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade100,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade200,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade700,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade800,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade500,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade600,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue.shade400,
                  width: 50,
                  height: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
/**
 * PlaceHolder, Aspect Ratio, Spacer, Divider, PageView , Opacity, Curved Navigation bar 
 */