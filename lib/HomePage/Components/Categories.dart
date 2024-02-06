import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HorizontalScrollableList extends StatelessWidget {
  final List<Map<String, dynamic>> svgData = [
    {
      'path': 'assets/Components/chef.svg',
      'title': 'Chef',
    },
    {
      'path': 'assets/Components/waiter.svg',
      'title': 'Waiter',
    },
    {
      'path': 'assets/Components/house.svg',
      'title': 'House',
    },
    {
      'path': 'assets/Components/chef.svg',
      'title': 'Chef',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: svgData.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF99ABC6).withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    svgData[index]['path'],
                    width: 67.0,
                    height: 67.0, // Adjust the height as needed
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    svgData[index]['title'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "RobotoBold",
                      height: 1.0,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
