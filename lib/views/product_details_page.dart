import 'package:bazaar/colors/custom_colors.dart';
import 'package:bazaar/views/widgets/special_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(
                      //   -20.0,
                      // ),
                      // topLeft: Radius.circular(
                      //   -20.0,
                      // ),

                      // bottomLeft: Radius.circular(
                      //   MediaQuery.of(context).size.width + 20.0,
                      // ),
                      bottomLeft: Radius.circular(
                        50.0,
                      ),
                      bottomRight: Radius.circular(
                        50.0,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: CustomColors.orange,
                        // borderRadius: BorderRadius.only(
                        //   bottomLeft: Radius.circular(50),
                        //   // bottomRight: Radius.elliptical(-100, -100)
                        //   // bottomRight: Radius.lerp(, b, t)
                        // )
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'تفاصيل المنتج',
                            style: TextStyle(color: Colors.white),
                          ),
                          Image.asset(
                            'assets/images/product_details.png',
                            height: 180,
                          ),
                          Container(
                            height: 60,
                            // width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/product_details.png',
                                ),
                                Image.asset(
                                    'assets/images/product_details.png'),
                                Image.asset(
                                    'assets/images/product_details.png'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Positioned(
                  //   height: 50,
                  //   width: MediaQuery.of(context).size.width,
                  //   bottom: -20,
                  //   // top: 310,
                  //   // right: -10,
                  //   child: Container(
                  //     alignment: Alignment.bottomRight,
                  //     // width: 350,
                  //     // height: 100,
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.only(
                  //           topRight: Radius.circular(50),
                  //         )),
                  //     padding: EdgeInsets.all(10),
                  //   ),
                  // ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, top: 10),
                    child: Text(
                      'صندوق خشبي مع تطريز',
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        Text('4.9')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('24.14\$'),
                        Container(
                          height: 40,
                          // width: 130,
                          // padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: CustomColors.redColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add, color: Colors.white)),
                              Text(
                                '1',
                                style: TextStyle(color: Colors.white),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                      'assets/images/subtract_icon.svg'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('المقاس'),
                        Container(
                          // width: 200,
                          // padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              // color: CustomColors.redColor,
                              // borderRadius: BorderRadius.circular(15)
                              ),
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text('S',
                                      style: TextStyle(color: Colors.black))),
                              TextButton(
                                  style: ButtonStyle(
                                      fixedSize: MaterialStateProperty.all(
                                          Size(10, 10))),
                                  onPressed: () {},
                                  child: Text(
                                    'M',
                                    style: TextStyle(color: Colors.black),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('L',
                                      style: TextStyle(color: Colors.black))),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('XL',
                                      style: TextStyle(color: Colors.black))),
                              // TextButton(
                              //     onPressed: () {},
                              //     child:
                              //         Text('2X', style: TextStyle(color: Colors.white)))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('اللون'),
                        Container(
                          // width: 200,
                          // padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              // color: CustomColors.redColor,
                              // borderRadius: BorderRadius.circular(15)
                              ),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.circle,
                                    color: CustomColors.redColor,
                                  )),
                              TextButton(
                                  style: ButtonStyle(
                                      fixedSize: MaterialStateProperty.all(
                                          Size(10, 10))),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.red,
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.redAccent,
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.circle,
                                    color: Color.fromARGB(255, 240, 167, 162),
                                  )),
                              // TextButton(
                              //     onPressed: () {},
                              //     child:
                              //         Text('2X', style: TextStyle(color: Colors.white)))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Image.asset(
                              'assets/images/popular5.png',
                              width: 100,
                            ),
                            Column(
                              children: [
                                Text('متجر منى'),
                                Row(
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/bag_icon.svg'),
                                    Text(' ملابس'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: SvgPicture.asset('assets/images/chat_icon.svg'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection: TextDirection.rtl,
                      children: [
                        Text('قد يعجبك أيضا'),
                        TextButton(onPressed: () {}, child: Text('المزيد'))
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child:
                  Row(
                    textDirection: TextDirection.rtl,

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SpecialProductWidget(4, 50, 'assets/images/jewelry1.png'),
                      SpecialProductWidget(4, 50, 'assets/images/jewelry1.png'),
                      SpecialProductWidget(4, 50, 'assets/images/jewelry1.png'),
                      // SpecialProductWidget(4, 50, 'assets/images/jewelry1.png'),
                      // SpecialProductWidget(4, 50, 'assets/images/jewelry1.png'),
                      // SpecialProductWidget(4, 50, 'assets/images/jewelry1.png'),
                    ],
                    // ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            // width: 200,
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: CustomColors.redColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'إضافة إلى السلة',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Container(
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: CustomColors.redColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'شراء الان',
                          style: TextStyle(color: CustomColors.redColor),
                        ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
