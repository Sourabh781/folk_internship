import 'package:flutter/material.dart';
import 'package:folk/custom_widgets/room_card.dart';
import 'package:folk/size_config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
                    width: 200,
                    child: Text(
                      'Control Panel',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset(
                    "assets/user.png",
                    scale: 4,
                  )
                ],
              ),
            ),
            Hero(
              tag: "whiteContainer",
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'All Rooms',
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.indigo[900],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            RoomCard(
                              iconPath: 'assets/bed.png',
                              roomName: 'Bed room',
                              noL: '4 Lights',
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            RoomCard(
                              iconPath: 'assets/room.png',
                              roomName: 'Living room',
                              noL: '2 Lights',
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            RoomCard(
                              iconPath: 'assets/kitchen.png',
                              roomName: 'Kitchen',
                              noL: '5 Lights',
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            RoomCard(
                              iconPath: 'assets/bathtube.png',
                              roomName: 'Bathroom',
                              noL: '1 Lights',
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            RoomCard(
                              iconPath: 'assets/house.png',
                              roomName: 'Outdoor',
                              noL: '5 Lights',
                            ),
                            SizedBox(
                              width: 16,
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
                  ),
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
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/bulb.png',
                      scale: 3,
                    ),
                    Image.asset(
                      'assets/home.png',
                      scale: 3,
                    ),
                    Image.asset(
                      'assets/settings.png',
                      scale: 3,
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
