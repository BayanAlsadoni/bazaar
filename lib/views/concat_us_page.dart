import 'package:bazaar/colors/custom_colors.dart';
import 'package:bazaar/views/home.dart';
import 'package:bazaar/views/widgets/custom_button.dart';
import 'package:bazaar/views/widgets/custom_text_field_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConcatUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('تواصل معنا'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        textDirection: TextDirection.rtl,
        children: [
          ConcatUsWidget('phone_icon.svg', '+97067476224'),
          ConcatUsWidget('fill_email_icon.svg', 'name@gmail.com'),
          ConcatUsWidget('location_icon.svg', 'فلسطين-غزة-شارع الرشيد'),
          CustomTextField2('الاسم الكامل'),
          CustomTextField2('رقم الجوال'),
          CustomTextField2('البريد الالكتروني'),
          CustomTextField2('الرسالة'),
          CustomButton('إرسال', Home())
        ],
      ),
    );
  }
}

class ConcatUsWidget extends StatelessWidget {
  String icon;
  String text;
  ConcatUsWidget(this.icon, this.text);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 170,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: CustomColors.redColor,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: SvgPicture.asset(
                  'assets/images/$icon',
                  width: 15,
                  colorFilter:
                      ColorFilter.mode(CustomColors.redColor, BlendMode.srcIn),
                )),
            Text(
              text,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
