import 'package:flutter/material.dart';
import 'package:one_parivahan/road.dart';
import 'package:one_parivahan/person.dart';
import 'package:one_parivahan/cars.dart';
import 'package:one_parivahan/wheels.dart';
import 'package:one_parivahan/license.dart';

class dashboard extends StatelessWidget {
  dashboard({super.key});

  var height, width;

  // Define a list of maps containing the image, title, and widget
  final List<Map<String, dynamic>> navigationItems = [
    {
      "image": "assets/images/car.png",
      "title": "Learn Cars",
      "widget": cars(),
    },
    {
      "image": "assets/images/scooty.png",
      "title": "Learn TwoWs",
      "widget": wheels(),
    },
    {
      "image": "assets/images/road.png",
      "title": "Traffic Rules",
      "widget": road(),
    },
    {
      "image": "assets/images/license.png",
      "title": "Learning License",
      "widget": license(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.amberAccent,
          child: Column(
            children: [
              Container(
                height: height * 0.25,
                width: width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 15,
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // InkWell(
                          //   onTap: () {},
                          //   child: const Icon(
                          //     Icons.sort,
                          //     color: Colors.white,
                          //     size: 50,
                          //   ),
                          // ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => person(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        // top: 20,
                        left: 15,
                        top: height*0.01,
                        right: 15,
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "What Do You Want To Do Today?",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                height: height * 0.75,
                width: width,
                padding: const EdgeInsets.symmetric(
                  vertical: 60,
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    mainAxisSpacing: 25,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: navigationItems.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => navigationItems[index]["widget"],
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              navigationItems[index]["image"],
                              width: 100,
                            ),
                            Text(
                              navigationItems[index]["title"],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
