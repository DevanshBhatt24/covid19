import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class doropdown extends StatelessWidget {
  const doropdown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color(0xffe5e5e5))),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/maps-and-flags.svg'),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: DropdownButton(
            isExpanded: true,
            underline: SizedBox(),
            icon: SvgPicture.asset("assets/icons/dropdown.svg"),
            value: "India",
            items: ['India', 'Indonesia', 'USA', 'Bangladesh']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {},
          ))
        ],
      ),
    );
  }
}
