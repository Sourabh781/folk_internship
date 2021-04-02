import 'package:flutter/material.dart';
import 'package:folk/pages/room_page.dart';

double height = 0;
double width = 0;
double area = 0;

class RoomCard extends StatelessWidget {
  RoomCard({this.iconPath, this.roomName, this.noL});
  final String iconPath;
  final String roomName;
  final String noL;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    area = height * width;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RoomPage()));
        },
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width / 28.2),
          ),
          child: Padding(
            padding: EdgeInsets.all(width / 26.5),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    iconPath,
                    scale: area / 113885.15,
                  ),
                  SizedBox(
                    height: height / 47,
                  ),
                  Text(
                    roomName,
                    style: TextStyle(
                        fontSize: width / 19.25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height / 94.1,
                  ),
                  Text(
                    noL,
                    style: TextStyle(
                        fontSize: width / 26.5,
                        color: Colors.yellow[600],
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
