import 'package:flutter/material.dart';

double height = 0;
double width = 0;
double area = 0;

class ScenesCard extends StatelessWidget {
  ScenesCard({this.label, this.color2, this.color1});
  final String label;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    area = height * width;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width / 21.1),
            gradient: LinearGradient(colors: [color1, color2])),
        child: Padding(
          padding: EdgeInsets.all(width / 17.6),
          child: Row(
            children: [
              Image.asset(
                'assets/surface2.png',
                scale: area / 199299,
              ),
              SizedBox(
                width: width / 21.1,
              ),
              Text(
                label,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: width / 26.5,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
