import 'package:flutter/material.dart';

import '../../colors/custom_colors.dart';
import '../shipping_addresses_page.dart';

class CustomButton extends StatelessWidget {
  String text;
  Widget myWidget;
  CustomButton(this.text, this.myWidget);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColors.redColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return myWidget;
            }));
          },
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
