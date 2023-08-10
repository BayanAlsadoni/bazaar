import 'package:bazaar/views/product_details_page.dart';
import 'package:flutter/material.dart';

import '../../colors/custom_colors.dart';
import '../type_page.dart';

class CategoryWidget extends StatelessWidget {
  String image;
  String text;
  CategoryWidget(this.image, this.text);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return TypePage();
        }));
      },
      child: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              // fit: BoxFit.fill,
              image: AssetImage(
                  // 'images/bg.jpg',
                  image),
            ),
          ),
          height: 80.0,
          width: 80,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 75,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      CustomColors.redColor.withOpacity(0.0),
                      CustomColors.redColor,
                      // Colors.grey.withOpacity(0.0),
                      // Colors.black,
                    ],
                    stops: [
                      0.6,
                      1
                    ])),
          ),
        ),
        Positioned(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          top: 50,
          left: 0,
          right: 0,
          // bottom: -10,
        ),
      ]),
    );
  }
}
