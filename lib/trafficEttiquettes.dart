import 'package:flutter/material.dart';

class trafficEttiquettes extends StatelessWidget {
  trafficEttiquettes({super.key});

  final List<String> images = [
    'assets/pdf/roadEt/0.png',
    'assets/pdf/roadEt/1.png',
    'assets/pdf/roadEt/2.png',
    'assets/pdf/roadEt/3.png',
    'assets/pdf/roadEt/4.png',
    'assets/pdf/roadEt/5.png',
    'assets/pdf/roadEt/6.png',
    'assets/pdf/roadEt/7.png',
    'assets/pdf/roadEt/8.png',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // Header Section
          Container(
            height: height * 0.15,
            width: width,
            color: Colors.amberAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Road Ettiquettes",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // White container with scrollable images
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0), // Horizontal padding
                child: Scrollbar(
                  thickness: 30,
                  radius: const Radius.circular(50),
                  thumbVisibility: true, // Always show the scrollbar thumb
                  scrollbarOrientation: ScrollbarOrientation.right,
                  child: SingleChildScrollView(
                    child: Column(
                      children: images.map((image) {
                        return Container(
                          height: height * 0.85, // Full height for each image
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 20), // Spacing between images
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20), // Rounded corners for images
                            image: DecorationImage(
                              image: AssetImage(image),
                              fit: BoxFit.contain, // Ensures the entire image is visible
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  trackVisibility: false, // Adds slight shadow
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
