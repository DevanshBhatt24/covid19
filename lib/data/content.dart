import 'package:covid19/data/constants.dart';
import 'package:flutter/material.dart';

class content extends StatelessWidget {
  final int? number;
  final String? tile;
  final Color? color;
  const content({
    this.number,
    this.tile,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: color!.withOpacity(.26)),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: color!, width: 2)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '$number',
          style: TextStyle(fontSize: 16, color: color!),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          tile!,
          style: ksubtextStyle.copyWith(fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
