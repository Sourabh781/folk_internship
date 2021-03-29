import 'package:flutter/material.dart';

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
            Expanded(
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
            Container(
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
            )
          ],
        ),
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  RoomCard({this.iconPath, this.roomName, this.noL});
  final String iconPath;
  final String roomName;
  final String noL;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  iconPath,
                  scale: 3.5,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  roomName,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  noL,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.yellow[600],
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
