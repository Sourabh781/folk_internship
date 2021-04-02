import 'package:flutter/material.dart';

double height = 0;
double width = 0;
double area = 0;

class ColorBoll extends StatelessWidget {
  ColorBoll({this.color, this.ontap});
  final Color color;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    area = height * width;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: height / 23.5,
        width: height / 23.5,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
