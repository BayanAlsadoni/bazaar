import 'package:bazaar/colors/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String text;
  IconData ic;
  CustomTextField(this.text, this.ic);
  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ]),
        child: TextField(
          textAlign: TextAlign.right,
          decoration: InputDecoration(
              // isCollapsed: true,
              contentPadding: EdgeInsets.all(10),
              hintText: text,
              hintStyle: TextStyle(height: 1),
              prefixIcon: Icon(
                ic,
                color: CustomColors.redColor,
              ),
              border: InputBorder.none),
        ));
  }
}
