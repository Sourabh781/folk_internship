import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

TextStyle lowerCard = TextStyle(
    fontSize: 20, color: Colors.indigo[900], fontWeight: FontWeight.bold);

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  int bulbIntensity = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/back_arrow.png',
                            scale: 2.5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Bed',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        'Room',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '4 Lights',
                        style: TextStyle(
                            color: Colors.yellow[600],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/light bulb.png',
                    scale: 2,
                  ),
                  // Column(
                  //   children: [
                  //     ListView(
                  //       scrollDirection: Axis.horizontal,
                  //       children: [
                  //         Container(
                  //           child: Row(
                  //             children: [Image.asset('assets/surface1')],
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(32),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/surface1.png',
                            scale: 3,
                          ),
                          SizedBox(
                            width: 10,
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
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue[900],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/desk.png',
                            scale: 3,
                          ),
                          SizedBox(
                            width: 10,
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
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/bed (1).png',
                            scale: 3,
                          ),
                          SizedBox(
                            width: 10,
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
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 16),
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
                        'Intensity',
                        style: lowerCard,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/solution2.png',
                              scale: 3,
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
                              scale: 3,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Colors',
                        style: lowerCard,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ColorBoll(
                            color: Colors.red[200],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ColorBoll(
                            color: Colors.green[200],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ColorBoll(
                            color: Colors.blue[200],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ColorBoll(
                            color: Colors.purple[200],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ColorBoll(
                            color: Colors.yellow[200],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/+.png',
                            scale: 3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Scenes',
                        style: lowerCard,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ScenesCard(
                            label: 'Birthday',
                            color1: Colors.red[200],
                            color2: Colors.deepOrange[200],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ScenesCard(
                            label: 'Party',
                            color1: Colors.purple[200],
                            color2: Colors.purple[100],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ScenesCard(
                            label: 'Relax',
                            color1: Colors.blue[200],
                            color2: Colors.blue[100],
                          ),
                          SizedBox(
                            width: 10,
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScenesCard extends StatelessWidget {
  ScenesCard({this.label, this.color2, this.color1});
  final String label;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [color1, color2])),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Image.asset(
                'assets/surface2.png',
                scale: 2,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                label,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ColorBoll extends StatelessWidget {
  ColorBoll({this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
