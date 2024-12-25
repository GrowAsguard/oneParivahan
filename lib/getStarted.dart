import 'package:flutter/material.dart';
import 'package:one_parivahan/dashboard.dart';

class getStarted extends StatelessWidget {
  const getStarted({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: EdgeInsets.all(0.10*height),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's choose our day ... ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => dashboard())
                  );
                }, 
                icon: Icon(
                  Icons.play_circle_rounded,
                  size: 100,
                  color: Colors.white,
                )
            )
          ],
        ),
      ),
    );
  }
}



