import 'package:bazaar/views/home.dart';
import 'package:bazaar/views/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors/custom_colors.dart';

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('مراجعة'),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shadowColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection: TextDirection.rtl,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.4),
                            ),
                            child: Image.asset(
                              'assets/images/specialProduct2.png',
                              height: 90,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(children: [
                          Text('ثوب فلسطيني مطرز'),
                          Text('25\$ X 2'),
                          Text('أحمر XL')
                        ]),
                      ])),
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection: TextDirection.rtl,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.4),
                            ),
                            child: Image.asset(
                              'assets/images/specialProduct2.png',
                              height: 90,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(children: [
                          Text('ثوب فلسطيني مطرز'),
                          Text('25\$ X 2'),
                          Text('أحمر XL')
                        ]),
                      ])),
              Container(
                color: Colors.grey.withOpacity(0.4),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Column(
                  textDirection: TextDirection.rtl,
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('طريقة الدفع'),
                            Text('1234xxx xxx xxx')
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'تغير',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('عنوان الشحن'),
                            Text('غزة-ميناء الصيادين-شارع الرشيد')
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'تغير',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [Text('المجموع'), Text("الشحن")],
                  ),
                  Column(
                    children: [
                      Text(
                        '220\$',
                        style: TextStyle(
                          color: CustomColors.redColor,
                        ),
                      ),
                      Text('5.2\$')
                    ],
                  ),
                ],
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
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(CustomColors.redColor),
                    ),
                    child: Text(
                      'تأكيد الدفع',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(top: 10),
                            color: Colors.white,
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/done_review_icon.svg',
                                  height: 170,
                                ),
                                Text(
                                  'تم الدفع والشراء بنجاح',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'يمكنك متابعة تفاصيل الطلب من قائمة طلباتي',
                                  textAlign: TextAlign.center,
                                ),
                                CustomButton('طلباتي', Home()),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'متابعة التسوق',
                                    style: TextStyle(color: Colors.black),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
