import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../store_main.dart';
import '../widgets/search_widget.dart';
import '../widgets/special_product_widget.dart';

class StoresPage extends StatelessWidget {
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
          'المتاجر',
          textAlign: TextAlign.center,
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/filter.svg',
            ),
            Expanded(child: SearchWidget()),
          ],
        ),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            CustomStoreWidget('welcome_image2.png', 'popular1.png'),
            CustomStoreWidget('store2.png', 'popular1.png'),
            CustomStoreWidget('store3.png', 'popular1.png'),
          ],
        ),
      ],
    ));
  }
}

class CustomStoreWidget extends StatelessWidget {
  String imageName;
  String storeName;
  CustomStoreWidget(this.imageName, this.storeName);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return StoreMainPage();
        }));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        // height: 200,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        child: Stack(children: [
          Container(
            height: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage('assets/images/$imageName'),
                    fit: BoxFit.cover)),
            // child: Image.asset('assets/images/$imageName',
            //     width: double.infinity, height: 100, fit: BoxFit.cover),
          ),
          Positioned(
            bottom: 0,
            // top: 0,
            child: Container(
              height: 70,
              width: 340,
              // alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Positioned(
                right: 20,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text('اسم المتجر'),
                    Text('4.9'),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Image.asset(
              'assets/images/$storeName',
              height: 90,
            ),
          ),
        ]),
      ),
    );
  }
}
