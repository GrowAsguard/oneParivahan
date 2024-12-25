import 'package:flutter/material.dart';

class person extends StatelessWidget {
  person({super.key});
  var height,width;
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
                  decoration: BoxDecoration(),
                  height: height*0.25,
                  width: width,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 40,
                          left: 15,
                          right: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 15,
                          right: 15,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Help and Support",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                wordSpacing: 2,
                              ),
                            ),
                            Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 100,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )
                  ),
                  height: height*0.75,
                  width: width,
                  padding: EdgeInsets.symmetric(
                    vertical: 60,
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                          'Contact Information',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 2,
                          )
                      ),
                      SizedBox(height: 16.0),
                      ListTile(
                        title: Text('Aishwarya Girish Achari'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('1CR23IS400'),
                            Text('INFORMATION SCIENCE ENGINEERING'),
                            Text('CMR INSTITUTE OF TECHNOLOGY'),
                            Text("+91 8123072984",style: TextStyle(color: Colors.blue),),
                          ],
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.email),
                          onPressed: () {
                            // launch('mailto:aiac22ise@cmrit.ac.in');
                          },
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ListTile(
                        title: Text('K Jaideep Reddy'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('1CR22IS064'),
                            Text('INFORMATION SCIENCE ENGINEERING'),
                            Text('CMR INSTITUTE OF TECHNOLOGY'),
                            Text("+91 9535390784",style: TextStyle(color: Colors.blue),),
                          ],
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.email),
                          onPressed: () {
                            // launch('mailto:kjre22ise@cmrit.ac.in');
                          },
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ListTile(
                        title: Text('Kabir Ahmed'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('1CR22IS065'),
                            Text('INFORMATION SCIENCE ENGINEERING'),
                            Text('CMR INSTITUTE OF TECHNOLOGY'),
                            Text("+91 7975419587",style: TextStyle(color: Colors.blue),),
                          ],
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.email),
                          onPressed: () {
                            // launch('mailto:kaah22ise@cmrit.ac.in');
                          },
                        ),
                      ),
                    ],
                  ),
                ),


              ],

            )
        ),
      ),
    );
  }
}
