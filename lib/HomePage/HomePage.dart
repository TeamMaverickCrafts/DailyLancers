import 'package:daily_lancers/Data/demodata.dart';
import 'package:daily_lancers/HomePage/Components/Categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.33,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  color: Color(0xff0D0140),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: SvgPicture.asset(
                  "assets/Components/homemain.svg",
                  height: MediaQuery.of(context).size.height * 0.38,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Hritik Chauhan",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "RobotoMedium",
                                height: 1.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xFFCFCFD2),
                                  size: 18.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Pune, Maharashtra",
                                  style: TextStyle(
                                    color: Color(0xFFCFCFD2),
                                    fontSize: 13,
                                    fontFamily: "RobotoRegular",
                                    height: 1.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/Components/Notifications.svg",
                              height: 25.0,
                              width: 25.0,
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.white,
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/Components/Profile.png",
                                  width: 34,
                                  height: 34,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.035,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Find your dream job\nhere!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "RobotoBold",
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: MediaQuery.of(context).size.height * 0.0515,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search,
                                  color: Color(0xFFA0A7B1)),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Search',
                              hintStyle: const TextStyle(
                                color: Color(0xFFA0A7B1),
                                fontSize: 13,
                                fontFamily: "RobotoMedium",
                                height: 1.3,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          "assets/Components/homesetting.svg",
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.07,
              top: MediaQuery.of(context).size.height * 0.04,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Quick Filters",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: "RobotoBold",
                    height: 1.0,
                  ),
                ),
              ],
            ),
          ),
          // Quick Filters Row
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 20.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              20), // Adjust the radius as needed
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 30,
                              offset: const Offset(
                                  0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/circle.svg",
                                width: 60,
                                height: 60,
                              ),
                              Image.asset("assets/chef.png") // Re
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Kitchen",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "RobotoBold",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              20), // Adjust the radius as needed
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 30,
                              offset: const Offset(
                                  0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/circle.svg",
                                width: 60,
                                height: 60,
                              ),
                              Image.asset("assets/waiter.png") // Re
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "F&B \nServices",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "RobotoBold",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              20), // Adjust the radius as needed
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 30,
                              offset: const Offset(
                                  0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/circle.svg",
                                width: 60,
                                height: 60,
                              ),
                              Image.asset("assets/guest.png") // Re
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Guest \nRelations",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "RobotoBold",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              20), // Adjust the radius as needed
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 30,
                              offset: const Offset(
                                  0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/circle.svg",
                                width: 60,
                                height: 60,
                              ),
                              Image.asset("assets/bar.png") // Re
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Bar & \nServices",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "RobotoBold",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: demoData.length,
              itemBuilder: (context, index) {
                return buildItem(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.22,
        width: MediaQuery.of(context).size.width * 0.9,
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(demoData[index]['image']),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                demoData[index]['title'],
                                style: const TextStyle(
                                  color: Color(0xff150B3D),
                                  fontSize: 14,
                                  fontFamily: "RobotoBold",
                                  height: 1.0,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                demoData[index]['location'],
                                style: const TextStyle(
                                    color: Color(0xff524B6B),
                                    fontSize: 12,
                                    fontFamily: "RobotoRegular",
                                    height: 1.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            demoData[index]['isChecked'] =
                                !(demoData[index]['isChecked'] ?? false);
                          });
                        },
                        child: Icon(
                          demoData[index]['isChecked'] == true
                              ? Icons.bookmark_rounded
                              : Icons.bookmark_border_rounded,
                          color: const Color(0xff524B6B),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  //main row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(demoData[index]['dateIcon']),
                              const SizedBox(width: 10),
                              Text(
                                demoData[index]['dateText'],
                                style: const TextStyle(
                                    color: Color(0xff524B6B),
                                    fontSize: 12,
                                    fontFamily: "RobotoRegular",
                                    height: 1.0),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              SvgPicture.asset(demoData[index]['clockIcon']),
                              const SizedBox(width: 10),
                              Text(
                                demoData[index]['clockText'],
                                style: const TextStyle(
                                    color: Color(0xff524B6B),
                                    fontSize: 12,
                                    fontFamily: "RobotoRegular",
                                    height: 1.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(demoData[index]['calendarIcon']),
                              const SizedBox(width: 10),
                              Text(
                                demoData[index]['calendarText'],
                                style: const TextStyle(
                                    color: Color(0xff524B6B),
                                    fontSize: 12,
                                    fontFamily: "RobotoRegular",
                                    height: 1.0),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              SvgPicture.asset(demoData[index]['taxiIcon']),
                              const SizedBox(width: 10),
                              Text(
                                demoData[index]['taxiText'],
                                style: const TextStyle(
                                    color: Color(0xff524B6B),
                                    fontSize: 12,
                                    fontFamily: "RobotoRegular",
                                    height: 1.0),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                demoData[index]['bottomLeftIcon'] == 'hotel'
                    ? SvgPicture.asset(demoData[index]['bottomLeftIcon'])
                    : SvgPicture.asset(demoData[index]['bottomLeftIcon2']),
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  decoration: BoxDecoration(
                    color: demoData[index]['status'] == 'hotel'
                        ? const Color(0xff5A4D90)
                        : const Color(0xff49B249),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(demoData[index]['infoIcon']),
                              const SizedBox(width: 15),
                              Text(
                                demoData[index]['categoryText'],
                                style: const TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 12,
                                    fontFamily: "RobotoBold",
                                    height: 1.0),
                              )
                            ]),
                        Text(
                          demoData[index]['priceText'],
                          style: const TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 14,
                              fontFamily: "RobotoBold",
                              height: 1.0),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
