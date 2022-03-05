import 'package:covid19/data/navigationoption.dart';
import 'package:covid19/screens/infoscrren.dart';
import 'package:flutter/material.dart';
import 'package:covid19/data/constants.dart';
import 'package:covid19/data/mapcontainer.dart';
import 'package:covid19/data/navbarcontain.dart';
import 'global.dart';
import 'country.dart';

enum Naviagtionstatus { Global, Country }

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Naviagtionstatus? nav = Naviagtionstatus.Global;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                navigationoption(
                  onselected: () {
                    setState(() {
                      nav = Naviagtionstatus.Global;
                    });
                  },
                  selected: nav == Naviagtionstatus.Global,
                  title: "Global",
                ),
                navigationoption(
                  onselected: () {
                    setState(() {
                      nav = Naviagtionstatus.Country;
                    });
                  },
                  selected: nav == Naviagtionstatus.Country,
                  title: "Country",
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  AnimatedSwitcher(
                      duration: Duration(microseconds: 250),
                      child: nav == Naviagtionstatus.Global
                          ? GLobal()
                          : Country()),
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
