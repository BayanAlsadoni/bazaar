import 'package:bazaar/views/review_page.dart';
import 'package:bazaar/views/widgets/custom_button.dart';
import 'package:bazaar/views/widgets/payment_method_widget.dart';
import 'package:flutter/material.dart';

import '../colors/custom_colors.dart';

class PaymentMethods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'طريقة الدفع',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            textDirection: TextDirection.rtl,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'اختر طريقة الدفع',
                textAlign: TextAlign.right,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PaymentMethodWidget('visa_icon.svg'),
                  PaymentMethodWidget('payPal_image.svg'),
                  PaymentMethodWidget('payment_icon.svg'),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: CustomColors.orange),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: CustomColors.orange),
                    ),
                  ],
                ),
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Icon(
                    Icons.add,
                    color: CustomColors.redColor,
                  ),
                  Text(
                    'أو اختر بطرق أخرى',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: CustomColors.redColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('الاسم على البطاقة'),
                    SizedBox(
                      width: 230,
                      child: TextField(
                        // cursorColor: CustomColors.redColor,

                        decoration: InputDecoration(
                            hintText: '',
                            hoverColor: CustomColors.redColor,
                            focusColor: CustomColors.redColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text('رقم البطاقة'),
                    SizedBox(
                      width: 230,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '40xxx xxxx xxxx',
                            focusColor: CustomColors.redColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text('تاريخ الانتهاء'),
                    SizedBox(
                      width: 230,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '',
                            focusColor: CustomColors.redColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text('رمز الحماية'),
                    SizedBox(
                      width: 230,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '000',
                            focusColor: CustomColors.redColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              CustomButton('متابعة', ReviewPage())
            ],
          ),
        ),
      ),
    );
  }
}
