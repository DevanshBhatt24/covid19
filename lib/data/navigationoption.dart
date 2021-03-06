import 'package:covid19/data/constants.dart';
import 'package:flutter/material.dart';

class navigationoption extends StatelessWidget {
  final String? title;
  final bool? selected;
  final Function()? onselected;
  navigationoption({this.onselected, this.selected, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onselected,
      child: Column(
        children: [
          Text(
            title!,
            style: TextStyle(
                color: selected! ? kPrimaryColor : Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          selected!
              ? Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: kPrimaryColor, shape: BoxShape.circle),
                    )
                  ],
                )
              : Container()
        ],
      ),
    );
  }
}
