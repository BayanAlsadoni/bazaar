import 'package:flutter/material.dart';

import '../../colors/custom_colors.dart';
import '../notification_page.dart';

class SellerNotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'التنبيهات',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Text(
                'اليوم',
                textAlign: TextAlign.right,
                style: TextStyle(color: CustomColors.redColor),
              ),
            ),
            SellerNotificationWidget('هند هند',
                'طلب جديد على فستان مطرز بالكامل تطريز تقليدي تصميم فلسطيني'),
            SellerNotificationWidget('هند هند', 'أعجب بحقيبة مطرزة', true),
            SellerNotificationWidget('هند هند',
                'طلب جديد على فستان مطرز بالكامل تطريز تقليدي تصميم فلسطيني'),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Text(
                'أمس',
                textAlign: TextAlign.right,
                style: TextStyle(color: CustomColors.redColor),
              ),
            ),
            SellerNotificationWidget('هند هند',
                'طلب جديد على فستان مطرز بالكامل تطريز تقليدي تصميم فلسطيني'),
            SellerNotificationWidget('هند هند', 'أعجب بحقيبة مطرزة', true),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Text(
                'هذا الأسبوع',
                textAlign: TextAlign.right,
                style: TextStyle(color: CustomColors.redColor),
              ),
            ),
            SellerNotificationWidget('هند هند',
                'طلب جديد على فستان مطرز بالكامل تطريز تقليدي تصميم فلسطيني'),
            SellerNotificationWidget('هند هند', 'أعجب بحقيبة مطرزة', true),
            SellerNotificationWidget('هند هند',
                'طلب جديد على فستان مطرز بالكامل تطريز تقليدي تصميم فلسطيني'),
          ],
        ),
      ),
    );
  }
}

class SellerNotificationWidget extends StatelessWidget {
  String storenName;
  String description;
  bool isSeen;
  SellerNotificationWidget(this.storenName, this.description,
      [this.isSeen = false]);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          isSeen == false
              ? Container(
                  alignment: Alignment.topCenter,
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: CustomColors.redColor),
                )
              : Container(),
          Icon(
            Icons.account_circle_rounded,
            color: Colors.grey,
            size: 50,
          ),

          SizedBox(
            width: 15,
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      storenName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'منذ 50دقيقة',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(
                  width: 180,
                  child: Text(
                    description,
                    textAlign: TextAlign.right,
                  ),
                ),
                Divider(height: 2),
              ],
            ),
          ),
          Image.asset(
            'assets/images/category1.png',
            width: 40,
            height: 40,
          )
        ],
      ),
    );
  }
}
