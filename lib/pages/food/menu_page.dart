import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SafeArea(
              child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.people_alt_sharp,
                    size: 30,
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 3,
                      shadowColor: Colors.white,
                      primary: Colors.white,
                      fixedSize: Size(20, 20),
                      shape: CircleBorder(),
                    ),
                    child: Icon(
                      Icons.store_mall_directory_outlined,
                      color: Colors.green.shade400,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 3,
                      shadowColor: Colors.white,
                      primary: Colors.white,
                      fixedSize: Size(20, 20),
                      shape: CircleBorder(),
                    ),
                    child: Icon(
                      Icons.fastfood_sharp,
                      color: Colors.green.shade400,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}


/**ElevatedButton(
          child: const Text(
            'Button',
            style: TextStyle(fontSize: 24),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 200)
              shape: const CircleBorder(), 
          ),
), */
