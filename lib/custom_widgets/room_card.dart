import 'package:flutter/material.dart';
import 'package:folk/pages/room_page.dart';

class RoomCard extends StatelessWidget {
  RoomCard({this.iconPath, this.roomName, this.noL});
  final String iconPath;
  final String roomName;
  final String noL;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RoomPage()));
        },
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
      ),
    );
  }
}
