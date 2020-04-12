
import 'package:flutter/material.dart';

class AccomplishmentCircle extends StatelessWidget {
  final double value;
  final double width;
  final double height;

  AccomplishmentCircle({Key key, this.value, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CircularProgressIndicator(
        value: value, 
        strokeWidth: width * 0.1, 
        backgroundColor: Colors.grey, 
        valueColor: new AlwaysStoppedAnimation<Color>(const Color(0xffbEB2181)),
      ),
      width:  width,
      height: height, 
    );
  }
}