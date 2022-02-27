import 'package:covid19/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class preventcard extends StatelessWidget {
  String? image;
  String? title;
  String? txt;
  preventcard({this.image, this.title, this.txt});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: Stack(
        children: [
          Container(
            height: 136,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 8), blurRadius: 24, color: kShadowColor)
                ]),
          ),
          Image.asset(image!),
          Positioned(
              left: 130,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title!,
                      style: ktitletextStyle.copyWith(fontSize: 16),
                    ),
                    Text(
                      txt!,
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
