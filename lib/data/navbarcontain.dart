import 'package:covid19/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class navbarconrainer extends StatelessWidget {
  final String? title;
  final String? image;
  final Function()? tap;
  navbarconrainer({this.image, this.title, this.tap});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Myclipper(),
      child: Container(
        padding: const EdgeInsets.fromLTRB(40, 50, 20, 0),
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xff3383cd), Color(0xff11249f)]),
            image:
                DecorationImage(image: AssetImage('assets/images/virus.png'))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                  onTap: tap, child: SvgPicture.asset("assets/icons/menu.svg")),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Stack(
              children: [
                SvgPicture.asset(
                  image!,
                  alignment: Alignment.topCenter,
                  width: 230,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                    top: 20,
                    left: 150,
                    child: Text(
                      title!,
                      style: kheadingtextStyle.copyWith(color: Colors.white),
                    )),
                Container(
                  width: double.infinity,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class Myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
