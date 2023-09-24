import 'package:bazaar/views/widgets/special_product_widget.dart';
import 'package:flutter/material.dart';

import '../colors/custom_colors.dart';

class StoreMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(children: [
          Container(
            height: 240,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/welcome_image2.png',
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ),
                Positioned(
                  top: 80,
                  right: 80,
                  left: 80,
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text('متجر المنى'),
                        Text('فلسطين-غزة'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text('انضم في'),
                                  Text('أكتوبر 2019')
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [Text('تم بيع'), Text('1.1945')],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [Text('التقييم'), Text('4.9')],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 50,
                    right: 150,
                    width: 70,
                    child: Image.asset(
                      'assets/images/popular2.png',
                      width: 70,
                    )),
              ],
            ),
          ),
          TabBar(
              labelColor: Colors.black,
              dividerColor: CustomColors.redColor,
              tabs: [
                Tab(
                  text: 'المراجعات',
                ),
                Tab(
                  text: 'المراجعات',
                ),
                Tab(
                  text: 'المراجعات',
                ),
              ]),
          Expanded(
              child: TabBarView(
            children: [
              ElementsWidget(),
              RevistionsWidget(),
              BriefWidget()
            ],
          ))
        ]),
      ),
    );
  }
}

class ElementsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.95,
        ),
      ),
    );
  }
}

class RevistionsWidget extends StatelessWidget {
  Icon dateIcon = Icon(Icons.date_range);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Expanded(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                ),
                Column(
                  textDirection: TextDirection.rtl,
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text('الاسم'),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.amber,
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Text(
                        ' جودة مذهلة! تبدو أفضل من الصورة!جميلة جدا وناعمة والشحن كان سريع و حصلت على منحوتة خطية جميلة',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text('15-AUG-2020 '),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [Text('02:35 '), Icon(Icons.alarm)],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                ),
                Column(
                  textDirection: TextDirection.rtl,
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text('الاسم'),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.amber,
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Text(
                        ' جودة مذهلة! تبدو أفضل من الصورة!جميلة جدا وناعمة والشحن كان سريع و حصلت على منحوتة خطية جميلة',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text('15-AUG-2020 '),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [Text('02:35 '), Icon(Icons.alarm)],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              textDirection: TextDirection.rtl,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                ),
                Column(
                  textDirection: TextDirection.rtl,
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text('الاسم'),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.amber,
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Text(
                        ' جودة مذهلة! تبدو أفضل من الصورة!جميلة جدا وناعمة والشحن كان سريع و حصلت على منحوتة خطية جميلة',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text('15-AUG-2020 '),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [Text('02:35 '), Icon(Icons.alarm)],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BriefWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/brief.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              '''  منذ أول فستان من الكتان تم إنشاؤه في عام 2014 ، قمنا    
          بقص وخياطة جميع ملابس الكتان الخاصة بنا محليًا في ليتوانيا باستخدام الكتان
        كنا نبحث عن ملابس كتان بسيطة ومتينة وعالية الجودة 
          بسعر Linenfox بدأنا (أنا وزوجي) .Oeko الخالي من 
          السموم والمعتمد من معقول ولم نتمكن من العثور عليها. قادتنا القطع الاولى إلى آخرين ونحن الآن شركة مكونة من شخصًا يعملون معًا كل يوم  
          سباب عديدة: الجودة وا  ستدامة وأخيراً ، من أجل منتج صديق للبيئة مصنوع بالحب المزيد''',
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
