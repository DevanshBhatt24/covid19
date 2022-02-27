import 'package:covid19/data/constants.dart';
import 'package:covid19/data/content.dart';
import 'package:flutter/material.dart';

class contentcontainer extends StatelessWidget {
  const contentcontainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(offset: Offset(0, 4), blurRadius: 30, color: kShadowColor)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          content(
            number: 1046,
            color: kInfectedColor,
            tile: "Infected",
          ),
          content(
            number: 84,
            color: kDeathColor,
            tile: "Deaths",
          ),
          content(
            number: 343,
            color: kRecovreyColor,
            tile: "Recovered",
          )
        ],
      ),
    );
  }
}
