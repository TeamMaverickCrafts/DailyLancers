import 'package:daily_lancers/Data/demodata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ItemDetailsPage extends StatelessWidget {
  final int index;

  const ItemDetailsPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'), // Replace 'assets/background_image.jpg' with your image path
            fit: BoxFit.cover, // Cover the entire container
          ),
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16.0,
                            top: MediaQuery.of(context).size.height * 0.08),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  //Image Icon
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(100), // Make it circular
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(
                                      0.1), // Set shadow color and opacity
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(0, 4), // Set shadow offset
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  100), // Clip child to make it circular
                              child: Image.asset(
                                demoData[index]['image'], // URL of the image
                                fit: BoxFit.contain, // Cover the entire container
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        demoData[index]['title'],
                        style: const TextStyle(
                          color: Color(0xff150B3D),
                          fontSize: 16,
                          fontFamily: "RobotoBold",
                          height: 1.0,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.045,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            demoData[index]['hotelname'],
                            style: const TextStyle(
                              color: Color(0xff0D0140),
                              fontSize: 16,
                              fontFamily: "RobotoRegular",
                              height: 1.0,
                            ),
                          ),
                          SvgPicture.asset("assets/Components/dot.svg"),
                          Text(
                            demoData[index]['state'],
                            style: const TextStyle(
                              color: Color(0xff0D0140),
                              fontSize: 16,
                              fontFamily: "RobotoRegular",
                              height: 1.0,
                            ),
                          ),
                          SvgPicture.asset("assets/Components/dot.svg"),
                          Text(
                            demoData[index]['calendarText'],
                            style: const TextStyle(
                              color: Color(0xff0D0140),
                              fontSize: 16,
                              fontFamily: "RobotoRegular",
                              height: 1.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.8,
                        color: Colors.white,
                        child: const Column(
                          children: [
                            // Text("hello"),
                            // Text("hello"),
                            // Text("hello"),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
