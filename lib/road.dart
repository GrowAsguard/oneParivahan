import 'package:flutter/material.dart';
import 'package:one_parivahan/handSignals.dart';
import 'package:one_parivahan/roadSigns.dart';
import 'package:one_parivahan/trafficEttiquettes.dart';

class road extends StatelessWidget {
  road({super.key});

  var height, width;

  final List<String> imagesRoad = [
    'assets/images/roadsigns.png',
    'assets/images/handsigns.png',
    'assets/images/trafficetti.png',
  ];

  final List<String> namesRoad = [
    'Road Signs',
    'Hand Signals',
    "Road Etiquettes",
  ];

  final List<Widget> navigationWidgets = [
    roadSigns(),
    handSignals(),
    trafficEttiquettes(),
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
                      padding: EdgeInsets.only(
                        top: height * 0.10,
                        left: 15,
                        right: 15,
                      ),
                      child: const Center(
                        child: Text(
                          "Rules and Etiquettes for Safe Driving",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            wordSpacing: 2,
                          ),
                          textAlign: TextAlign.center,
                        ),
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
                  vertical: 20,
                  horizontal: 15,
                ),
                child: ListView.builder(
                  itemCount: imagesRoad.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => navigationWidgets[index],
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                imagesRoad[index],
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black26,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                namesRoad[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 3,
                                  wordSpacing: 3,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2, 2),
                                      blurRadius: 5,
                                      color: Colors.black26,
                                    ),
                                  ],
                                ),
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
