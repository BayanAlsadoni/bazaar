import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import 'add_product_page_setp_two.dart';

class AddProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('إضافة منتج جديد'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        margin: EdgeInsets.all(2),
        child: SingleChildScrollView(
          child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AddProductWidget('اسم المنتج', 'أدخل اسم المنتج'),
              AddProductWidget('التصنيف الأساسي', 'أدخل التصنيف الأساسي'),
              AddProductWidget('التصنيف الفرعي', 'أدخل التصنيف الفرعي'),
              AddProductWidget('السعر', 'أدخل السعر'),
              AddProductWidget('الخصم', 'أدخل نسبة الخصم'),
              AddProductWidget('الكمية', 'أدخل الكمية'),
              Text('المقاسات المتوفرة'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 215, 214, 214),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('2X'),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    // margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 215, 214, 214),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('XL'),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 215, 214, 214),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('L'),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 215, 214, 214),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('M'),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 215, 214, 214),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('S'),
                  )
                ],
              ),
              CustomButton('التالي', AddProductPageStepTwo())
            ],
          ),
        ),
      ),
    );
  }
}

class AddProductWidget extends StatelessWidget {
  String text;
  String hint;
  AddProductWidget(this.text, this.hint);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      alignment: Alignment.centerRight,
      child: Column(
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          Container(
            padding: EdgeInsets.only(right: 10),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 215, 214, 214),
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                  hintTextDirection: TextDirection.rtl
                  // floatingLabelAlignment: FloatingLabelAlignment.start
                  //  alignLabelWithHint: true
                  ),
            ),
          )
        ],
      ),
    );
  }
}
