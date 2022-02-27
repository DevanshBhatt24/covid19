import 'package:covid19/data/constants.dart';
import 'package:covid19/data/navbarcontain.dart';
import 'package:covid19/data/preventCard.dart';
import 'package:covid19/data/symptomCard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';

enum symptom { headache, cough, fever }

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  symptom? tap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            navbarconrainer(
              image: "assets/icons/coronadr.svg",
              title: "Get to know \n About Covid-19 ",
              tap: () => Navigator.pop(context),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Symptoms',
                    style: ktitletextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      symptomcard(
                        ontapcall: () {
                          setState(() {
                            tap = symptom.headache;
                          });
                        },
                        image: "assets/images/headache.png",
                        txt: "Headache",
                        isactive: tap == symptom.headache,
                      ),
                      symptomcard(
                        ontapcall: () {
                          setState(() {
                            tap = symptom.cough;
                          });
                        },
                        image: "assets/images/caugh.png",
                        txt: "Cough",
                        isactive: tap == symptom.cough,
                      ),
                      symptomcard(
                        ontapcall: () {
                          setState(() {
                            tap = symptom.fever;
                          });
                        },
                        image: "assets/images/fever.png",
                        txt: "Fever",
                        isactive: tap == symptom.fever,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Prevention",
                    style: ktitletextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  preventcard(
                    image: "assets/images/wear_mask.png",
                    txt:
                        'Since thew start of the coronavirus outbreak some places have fully embraced wearing facemask',
                    title: "Wear face mask",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  preventcard(
                    image: "assets/images/wash_hands.png",
                    txt:
                        'Since the start of the coronavirus outbreak some places have fully embraced washing hands',
                    title: "Wear your hand",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
