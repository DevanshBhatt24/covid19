import 'package:covid19/data/constants.dart';
import 'package:flutter/material.dart';

class symptomcard extends StatelessWidget {
  final String? image;
  final String? txt;
  final bool? isactive;
  final Function()? ontapcall;
  symptomcard({this.image, this.txt, this.isactive, this.ontapcall});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapcall,
      child: Container(
        width: 100,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(boxShadow: [
          isactive!
              ? BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: kActiveShadowColor)
              : BoxShadow(
                  offset: Offset(0, 3), blurRadius: 6, color: kShadowColor),
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          children: [
            Image.asset(
              image!,
              height: 90,
            ),
            Text(
              txt!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.7)),
            )
          ],
        ),
      ),
    );
  }
}
