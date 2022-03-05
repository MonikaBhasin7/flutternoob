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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuToolbar(),
              SizedBox(
                width: 180,
                height: 180,
                child: Card(
                  color: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.white,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    overflow: Overflow.visible,
                    children: const [
                      Positioned(
                        top: -17,
                        right: -17,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg"),
                        ),
                      ),
                      Positioned(
                        width: 200,
                        child: Text(
                          "Food",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        top: 110,
                        left: 12,
                      ),
                      Positioned(
                        child: Text(
                          "100",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.green),
                        ),
                        bottom: 12,
                        left: 12,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blue,
                        ),
                        bottom: 12,
                        right: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

class MenuToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
          onPressed: () async {
            await doSomeProcessing();
            print("onPressed process complete.");
          },
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
    );
  }
}


Future<String> doSomeProcessing() async {
  return Future.delayed(
    const Duration(seconds: 4),
        () => 'Something from internet',
  );
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
Text(
                                    "200",
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
                                      Icons.store_mall_directory_outlined,
                                      color: Colors.green.shade400,
                                      size: 20,
                                    ),
                                    onPressed: () {},
                                  )

          

          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Arabi and Makhan",
                                  ),
                                  Divider(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        color: Colors.amber,
                                        width: 30,
                                        height: 30,
                                      ),
                                      Container(
                                        color: Colors.amber,
                                        width: 30,
                                        height: 30,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
), */
