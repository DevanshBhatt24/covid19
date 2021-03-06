import 'dart:convert';
import 'package:timeago/timeago.dart' as time;
import 'package:covid19/data/constants.dart';
import 'package:covid19/data/content.dart';
import 'package:covid19/models/globalmodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class globalcontentcontainer extends StatelessWidget {
  final GlobalSummaryModel? summary;
  globalcontentcontainer({this.summary});
  @override
  Widget build(BuildContext context) {
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
              number: summary!.totalConfirmed,
              color: kInfectedColor,
              tile: "Infected",
            ),
            content(
              number: summary!.totalDeaths,
              color: kDeathColor,
              tile: "Deaths",
            ),
            content(
              number: 82882838,
              color: kRecovreyColor,
              tile: "Recovered",
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
