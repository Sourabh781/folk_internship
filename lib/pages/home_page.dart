import 'package:flutter/material.dart';
import 'package:folk/custom_widgets/room_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 0;
  double width = 0;
  double area = 0;
  @override
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    area = height * width;
    print(height);
    print(width);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width / 2.1,
                    child: Text(
                      'Control Panel',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width / 9.6,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset(
                    "assets/user.png",
                    scale: area / 99649.55,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(width / 10.5),
                  topRight: Radius.circular(width / 10.5),
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(width / 13.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'All Rooms',
                      style: TextStyle(
                          fontSize: width / 15,
                          color: Colors.indigo[900],
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: width / 26.5,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              RoomCard(
                                iconPath: 'assets/bed.png',
                                roomName: 'Bed room',
                                noL: '4 Lights',
                              ),
                              SizedBox(
                                width: width / 26.5,
                              ),
                              RoomCard(
                                iconPath: 'assets/room.png',
                                roomName: 'Living room',
                                noL: '2 Lights',
                              )
                            ],
                          ),
                          SizedBox(
                            height: width / 42.3,
                          ),
                          Row(
                            children: [
                              RoomCard(
                                iconPath: 'assets/kitchen.png',
                                roomName: 'Kitchen',
                                noL: '5 Lights',
                              ),
                              SizedBox(
                                width: width / 26.5,
                              ),
                              RoomCard(
                                iconPath: 'assets/bathtube.png',
                                roomName: 'Bathroom',
                                noL: '1 Lights',
                              )
                            ],
                          ),
                          SizedBox(
                            height: width / 42.3,
                          ),
                          Row(
                            children: [
                              RoomCard(
                                iconPath: 'assets/house.png',
                                roomName: 'Outdoor',
                                noL: '5 Lights',
                              ),
                              SizedBox(
                                width: width / 26.5,
                              ),
                              RoomCard(
                                iconPath: 'assets/balcony.png',
                                roomName: 'Balcony',
                                noL: '2 Lights',
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 6),
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/bulb.png',
                      scale: area / 132866,
                    ),
                    Image.asset(
                      'assets/home.png',
                      scale: area / 132866,
                    ),
                    Image.asset(
                      'assets/settings.png',
                      scale: area / 132866,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
