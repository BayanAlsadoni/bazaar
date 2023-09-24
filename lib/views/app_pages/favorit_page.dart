import 'package:bazaar/views/widgets/special_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavoritPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'المفضلة',
            textAlign: TextAlign.center,
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('المفضلة'),
              ),
              Container(
                child: Text('مفضلة الملابس'),
              )
            ],
          ),
          GridView(
            padding: EdgeInsets.all(10),
            children: [
              SpecialProductWidget(4.9, 24, 'assets/images/jewelry1.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/jewelry3.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/jewelry4.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/pillow.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/jewelry3.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/jewelry4.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/pillow.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/jewelry3.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/jewelry4.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/jewelry1.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/jewelry1.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/jewelry3.png'),
              SpecialProductWidget(4.9, 24, 'assets/images/jewelry4.png'),
            ],
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.95,
            ),
          )
        ],
      ),
    );
  }
}
