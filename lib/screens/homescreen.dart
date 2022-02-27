import 'package:covid19/screens/infoscrren.dart';
import 'package:flutter/material.dart';
import 'package:covid19/data/constants.dart';
import 'package:covid19/data/contentcontainer.dart';
import 'package:covid19/data/dropdown.dart';
import 'package:covid19/data/mapcontainer.dart';
import 'package:covid19/data/navbarcontain.dart';
import 'package:covid19/data/update.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            navbarconrainer(
              image: "assets/icons/Drcorona.svg",
              title: "All you need \n is stay home ",
              tap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => InfoScreen())),
            ),
            doropdown(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  updates(),
                  SizedBox(
                    height: 30,
                  ),
                  contentcontainer(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Spread of Virus',
                        style: ktitletextStyle,
                      ),
                      Text(
                        'See Details',
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  mapconatiner(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
