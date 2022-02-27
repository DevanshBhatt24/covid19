import 'package:covid19/data/constants.dart';
import 'package:flutter/material.dart';

class mapconatiner extends StatelessWidget {
  const mapconatiner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(offset: Offset(0, 10), blurRadius: 30, color: kShadowColor),
        ],
      ),
      child: Image.asset(
        "assets/images/map.png",
        fit: BoxFit.contain,
      ),
    );
  }
}
