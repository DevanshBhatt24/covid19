import 'package:covid19/data/constants.dart';
import 'package:covid19/data/content.dart';
import 'package:covid19/models/countrymodel.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as time;

class countrycontent extends StatelessWidget {
  final CountrySummaryModel? summary;
  countrycontent({this.summary});
  @override
  Widget build(BuildContext context) {
    // print(widget.infected);
    return Container(
      height: 180,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(offset: Offset(0, 4), blurRadius: 30, color: kShadowColor)
      ]),
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            content(
              number: summary!.confirmed,
              color: kInfectedColor,
              tile: "Infected",
            ),
            content(
              number: summary!.death,
              color: kDeathColor,
              tile: "Deaths",
            ),
            content(
              number: 82882,
              color: kRecovreyColor,
              tile: "Recovered",
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Positioned(
          top: 120,
          left: 60,
          child: Text(
            "Statistics updated " + time.format(summary!.date!),
            style: TextStyle(fontSize: 12, color: kPrimaryColor),
          ),
        )
      ]),
    );
  }
}
