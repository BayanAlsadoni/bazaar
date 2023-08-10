import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FamousStoresWiddget extends StatelessWidget {
  String image;
  FamousStoresWiddget(this.image);
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   child:
        InkWell(
      onTap: () {},
      child: Container(
          // width: 50,
          // height: 90,
          margin: EdgeInsets.all(0),
          // padding: EdgeInsets.all(10),
          // decoration: BoxDecoration(
          //     // border: Border.all(),
          //     color: Colors.white,
          //     // color: Colors.teal,
          //     borderRadius: BorderRadius.circular(50),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey.withOpacity(0.5),
          //         blurRadius: 7,
          //         offset: Offset(0, 3),
          //       )
          //     ]),
          child: Image.asset(image)
          // child: Image.asset("assets/images/popular1.png")
          //  SvgPicture.asset("assets/images/seller.svg",
          //     semanticsLabel: 'Acme Logo'),
          ),
      // ),
    );
  }
}
