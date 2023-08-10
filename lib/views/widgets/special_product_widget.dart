import 'package:bazaar/colors/custom_colors.dart';
import 'package:bazaar/views/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpecialProductWidget extends StatelessWidget {
  dynamic raiting;
  double price;
  bool isdiscount;
  double discountPrice;
  String image;
  SpecialProductWidget(this.raiting, this.price, this.image,
      [this.isdiscount = false, this.discountPrice = 0]);
  @override
  Widget build(BuildContext context) {
    return

        //  ClipRRect(
        //   borderRadius: BorderRadius.circular(10),
        //   child:

        InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ProductDetailsPage();
        }));
      },
      child: Container(
        // color: Colors.amber,
        height: 165,
        width: 100,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Colors.grey.withOpacity(0.5),
            color: Colors.white,
            // color: Colors.grey.withOpacity(0.5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ]),

        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: double.infinity,
                // width: 200,
                // margin: EdgeInsets.only(bottom: 10),
                // padding: EdgeInsets.all(5),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.grey.withOpacity(0.5),
                  // color: Colors.white,
                  color: Colors.grey.withOpacity(0.4),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     blurRadius: 7,
                  //     offset: Offset(0, 3),
                  //   )
                  // ]
                ),
                child:

                    // Stack(
                    // alignment: Alignment.center,
                    // fit: StackFit.expand,
                    // children: [
                    Image.asset(
                  // alignment: Alignment.center,
                  image,
                  height: 90,
                  // height: double.maxFinite,
                  // width: 80,
                  // width: double.maxFinite / 2,
                  // fit: BoxFit.contain,
                  // fit: BoxFit.fitWidth,
                ),
                //   SvgPicture.asset(
                // 'assets/images/heart_icon.svg',
                // alignment: AlignmentDirectional.topCenter,
                // )
                // ],
                // ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 12,
                    ),
                    Text(
                      '$raiting',
                      style: TextStyle(fontSize: 11),
                    ),
                    // Text('⭐$raiting'),
                  ],
                ),
                // Text(
                //   raiting.toString(),
                //   textAlign: TextAlign.left,
                // ),
                // Icon(
                //   Icons.star,
                //   color: Colors.amber,
                // ),
                Text(
                  "الاسم",
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            Container(
              alignment: Alignment.topRight,
              child: Text(
                '$price\$',
                // textAlign: TextAlign.right,
                style: TextStyle(color: CustomColors.redColor, fontSize: 11),
              ),
            ),
            isdiscount ? Text(discountPrice.toString()) : Text("")
          ],
          // ),
        ),
      ),
    );
  }
}
