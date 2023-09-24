import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FamousStoresWiddget extends StatelessWidget {
  String image;
  FamousStoresWiddget(this.image);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.all(0),
          child: Image.asset(image)
          ),
    );
  }
}
