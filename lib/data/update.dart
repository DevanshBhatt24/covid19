import 'package:covid19/data/constants.dart';
import 'package:flutter/material.dart';

class updates extends StatelessWidget {
  const updates({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(text: "Case Update \n", style: ktitletextStyle),
          TextSpan(
              text: 'Newest update March 28',
              style: TextStyle(color: kTextLightColor))
        ])),
        Spacer(),
        Text(
          "See Details",
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
