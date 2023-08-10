import 'package:bazaar/colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TypeWidget extends StatelessWidget {
  String text;
  String iconName;
  TypeWidget(this.text, this.iconName);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20)),
        child: Row(children: [
          Text(text),
          SizedBox(
            width: 5,
          ),
          SvgPicture.asset(iconName, color: CustomColors.redColor),
        ]));
  }
}
