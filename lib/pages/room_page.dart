import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:folk/custom_widgets/color_ball.dart';
import 'package:folk/custom_widgets/scene_card.dart';
import 'package:folk/pages/home_page.dart';

TextStyle lowerCard = TextStyle(
    fontSize: 20, color: Colors.indigo[900], fontWeight: FontWeight.bold);

double height = 0;
double width = 0;
double area = 0;

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  int bulbIntensity = 0;
  Color bulbColor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    area = height * width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: width / 13.2, right: width / 13.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Image.asset(
                              'assets/back_arrow.png',
                              scale: area / 159439.2,
                            ),
                          ),
                          SizedBox(
                            width: width / 42.3,
                          ),
                          Text(
                            'Bed',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width / 11.75,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        'Room',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width / 11.75,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: width / 42.3),
                      Text(
                        '4 Lights',
                        style: TextStyle(
                            color: Colors.yellow[600],
                            fontSize: width / 23.5,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/Group 38.png',
                        scale: area / 132866,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: bulbColor),
                        height: height / 31.3,
                        width: width / 14.1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(width / 13.2),
              height: height / 18.8,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width / 35.3),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width / 26.5),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/surface1.png',
                            scale: area / 132866,
                          ),
                          SizedBox(
                            width: width / 42.3,
                          ),
                          Text(
                            'Main Light',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 21.2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width / 35.3),
                      color: Colors.blue[900],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width / 26.5),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/desk.png',
                            scale: area / 132866,
                          ),
                          SizedBox(
                            width: width / 42.3,
                          ),
                          Text(
                            'Desk Light',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 21.2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width / 35.3),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width / 26.5),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/bed (1).png',
                            scale: area / 132866,
                          ),
                          SizedBox(
                            width: width / 42.3,
                          ),
                          Text(
                            'Bed Light',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buildWhiteCardOfRoomPage(context)
          ],
        ),
      ),
    );
  }

  Expanded buildWhiteCardOfRoomPage(BuildContext context) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.only(top: height / 58.8),
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
                    'Intensity',
                    style: lowerCard,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height / 39.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/solution2.png',
                          scale: area / 132866,
                        ),
                        Expanded(
                          child: SliderTheme(
                            data: SliderTheme.of(context)
                                .copyWith(thumbColor: Colors.black),
                            child: Slider(
                                activeColor: Colors.amber[200],
                                min: 0,
                                max: 100,
                                value: bulbIntensity.toDouble(),
                                onChanged: (double newvalue) {
                                  setState(() {
                                    bulbIntensity = newvalue.round();
                                  });
                                }),
                          ),
                        ),
                        Image.asset(
                          'assets/yellow_bulb.png',
                          scale: area / 132866,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 47,
                  ),
                  Text(
                    'Colors',
                    style: lowerCard,
                  ),
                  SizedBox(
                    height: height / 47,
                  ),
                  buildColorBallrow(),
                  SizedBox(
                    height: height / 47,
                  ),
                  Text(
                    'Scenes',
                    style: lowerCard,
                  ),
                  SizedBox(
                    height: height / 47,
                  ),
                  Row(
                    children: [
                      ScenesCard(
                        label: 'Birthday',
                        color1: Colors.red[200],
                        color2: Colors.deepOrange[200],
                      ),
                      SizedBox(
                        width: width / 42.3,
                      ),
                      ScenesCard(
                        label: 'Party',
                        color1: Colors.purple[200],
                        color2: Colors.purple[100],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height / 47,
                  ),
                  Row(
                    children: [
                      ScenesCard(
                        label: 'Relax',
                        color1: Colors.blue[200],
                        color2: Colors.blue[100],
                      ),
                      SizedBox(
                        width: width / 42.3,
                      ),
                      ScenesCard(
                        label: 'Fun',
                        color1: Colors.green[200],
                        color2: Colors.green[100],
                      )
                    ],
                  )
                ],
              ),
            )));
  }

  Row buildColorBallrow() {
    return Row(
      children: [
        ColorBoll(
          color: Colors.red[200],
          ontap: () {
            setState(() {
              bulbColor = Colors.red[200];
            });
          },
        ),
        SizedBox(
          width: width / 21.1,
        ),
        ColorBoll(
          color: Colors.green[200],
          ontap: () {
            setState(() {
              bulbColor = Colors.green[200];
            });
          },
        ),
        SizedBox(
          width: width / 21.1,
        ),
        ColorBoll(
          color: Colors.blue[200],
          ontap: () {
            setState(() {
              bulbColor = Colors.blue[200];
            });
          },
        ),
        SizedBox(
          width: width / 21.1,
        ),
        ColorBoll(
          color: Colors.purple[200],
          ontap: () {
            setState(() {
              bulbColor = Colors.purple[200];
            });
          },
        ),
        SizedBox(
          width: width / 21.1,
        ),
        ColorBoll(
          color: Colors.yellow[200],
          ontap: () {
            setState(() {
              bulbColor = Colors.yellow[200];
            });
          },
        ),
        SizedBox(
          width: width / 21.1,
        ),
        Image.asset(
          'assets/+.png',
          scale: area / 132866,
        )
      ],
    );
  }
}
