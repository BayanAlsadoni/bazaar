import 'package:bazaar/colors/custom_colors.dart';
import 'package:bazaar/views/shipping_addresses_page.dart';
import 'package:flutter/material.dart';

import '../widgets/cart_widget.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text('السلة'),
        CartWidget(),
        CartWidget(),
        CartWidget(),
        Container(
          // color: Colors.grey.withOpacity(0.4),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
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
            textDirection: TextDirection.rtl,
            children: [
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('إجمالي العناصر'),
                  Text('75\$'),
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('الشحن'),
                  Text('75\$'),
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('الخصم'),
                  Text('75\$'),
                ],
              ),
            ],
          ),
        ),
        Container(
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ShippingAddressesPage();
                }));
              },
              child: Text(
                'الذهاب إلى الدفع',
                style: TextStyle(color: Colors.white),
              )),
        )
      ],
    ));
  }
}
