import 'package:flutter/material.dart';

import '../colors/custom_colors.dart';

class NotificationPage extends StatelessWidget {
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
            NotificationWidget('متجر المنى',
                'تم الموافقة وشحن جاكيت قصير مطرز بالكامل تطريز تقليدي تصميم فلسطيني'),
            NotificationWidget(
                'متجر المنى', 'قام بالرد على الرسالة التي أرسلتها'),
            NotificationWidget(
                'متجر المنى', 'قام بالرد على الرسالة التي أرسلتها'),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Text(
                'أمس',
                textAlign: TextAlign.right,
                style: TextStyle(color: CustomColors.redColor),
              ),
            ),
            NotificationWidget(
                'متجر المنى',
                'تم الموافقة وشحن جاكيت قصير مطرز بالكامل تطريز تقليدي تصميم فلسطيني',
                true),
            NotificationWidget(
                'متجر المنى', 'قام بالرد على الرسالة التي أرسلتها'),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Text(
                'هذا الأسبوع',
                textAlign: TextAlign.right,
                style: TextStyle(color: CustomColors.redColor),
              ),
            ),
            NotificationWidget(
                'متجر المنى',
                'تم الموافقة وشحن جاكيت قصير مطرز بالكامل تطريز تقليدي تصميم فلسطيني',
                true),
            NotificationWidget(
                'متجر المنى', 'قام بالرد على الرسالة التي أرسلتها'),
          ],
        ),
      ),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  String storenName;
  String description;
  bool isSeen;
  NotificationWidget(this.storenName, this.description, [this.isSeen = false]);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // margin: EdgeInsets.all(10),

      // height: 140,
      // width: 100,
      child: Row(
        textDirection: TextDirection.rtl,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/images/popular4.png', width: 70),
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
                      width: 180,
                      child: Text(
                        description,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                Text(
                  'منذ 50دقيقة',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
                Divider(height: 2),
              ],
            ),
          ),
          isSeen == false
              ? Container(
                  alignment: Alignment.topCenter,
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: CustomColors.redColor),
                )
              : Container()
        ],
      ),
    );
  }
}
