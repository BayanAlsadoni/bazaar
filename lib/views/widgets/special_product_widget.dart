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
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ProductDetailsPage();
        }));
      },
      child: Container(
        height: 165,
        width: 100,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
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

        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.4),
                ),
                child:
                    Image.asset(
                  image,
                  height: 90,
                ),
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
                style: TextStyle(color: CustomColors.redColor, fontSize: 11),
              ),
            ),
            isdiscount ? Text(discountPrice.toString()) : Text("")
          ],
        ),
      ),
    );
  }
}
