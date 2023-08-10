import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField2 extends StatelessWidget {
  String text;
  String hint;
  CustomTextField2(this.text, [this.hint = '']);

  List names = ['ahmed', 'ali', 'sami'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          text,
          textAlign: TextAlign.right,
        ),
        Container(
          // margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(129, 174, 174, 174),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                hintText: hint,
                //     // isCollapsed: true,
                contentPadding: EdgeInsets.only(right: 15),
                // hintStyle: TextStyle(height: 1),
                border: InputBorder.none),
          ),
        )
      ]),
    );
  }
}
