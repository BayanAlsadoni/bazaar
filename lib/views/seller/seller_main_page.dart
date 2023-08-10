import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../colors/custom_colors.dart';
import '../notification_page.dart';
import '../profile_page.dart';
import '../widgets/category_widget.dart';
import '../widgets/famous_stores_widget.dart';
import '../widgets/search_widget.dart';
import '../widgets/special_product_widget.dart';

class SellerMainPage extends StatelessWidget {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // textDirection: TextDirection.rtl,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/images/Logo.png",
                  width: 100,
                  height: 100,
                  // alignment: Alignment.center,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ProfilePage();
                    }));
                  },
                  child: CircleAvatar(
                    backgroundColor: CustomColors.redColor,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/filter.svg",
                ),
                Expanded(child: SearchWidget())
              ],
            ),
            Stack(children: [
              Container(
                height: 200,
                child: PageView(
                  controller: pageController,
                  children: [
                    Image.asset("assets/images/p1.png"),
                    Image.asset("assets/images/p2.png"),
                    Image.asset("assets/images/p3.png"),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                bottom: -120,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  child: SmoothPageIndicator(
                      // textDirection: TextDirection.ltr,
                      controller: pageController,
                      count: 3,
                      effect: const WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        // type: WormType.underground,
                        // activeDotColor: Color.fromARGB(249, 151, 25, 29)),
                        activeDotColor: Colors.black,
                      )),
                ),
              ),
            ]),
            Text(
              "تسوق حسب الفئة",
              textAlign: TextAlign.right,
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child:
            Container(
              height: 100,
              width: 200,
              child: ListView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Expanded(
                        child: CategoryWidget(
                            'assets/images/category1.png', 'ملابس')),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CategoryWidget(
                            'assets/images/category2.png', 'إكسسوارات')),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CategoryWidget(
                            'assets/images/category3.png', 'خزفيات')),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CategoryWidget(
                            'assets/images/category4.png', 'أحذية')),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CategoryWidget(
                            'assets/images/category5.png', 'ملابس'))
                  ]),
            ),
            // )
            Text(
              'منتجات مميزة',
              textAlign: TextAlign.right,
            ),
            Container(
              height: 185,
              width: 200,
              // color: Colors.amber,
              child: ListView(
                reverse: true,
                scrollDirection: Axis.horizontal,
                children: [
                  SpecialProductWidget(
                      4.5, 24.12, 'assets/images/product_details.png'),
                  SpecialProductWidget(
                      4.5, 24.12, 'assets/images/specialProduct2.png'),
                  SpecialProductWidget(
                      4.5, 24.12, 'assets/images/specialProduct1.png'),
                  SpecialProductWidget(
                      4.5, 24.12, 'assets/images/specialProduct2.png'),
                ],
              ),
            ),
            Text(
              'الأكثر مبيعا',
              textAlign: TextAlign.right,
            ),
            Container(
              height: 185,
              width: 200,
              // color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                children: [
                  SpecialProductWidget(
                      4.5, 24.12, 'assets/images/specialProduct2.png'),
                  SpecialProductWidget(
                      4.5, 24.12, 'assets/images/specialProduct1.png'),
                  SpecialProductWidget(
                      4.5, 24.12, 'assets/images/specialProduct2.png'),
                ],
              ),
            ),
            Text(
              'أشهر المتاجر',
              textAlign: TextAlign.right,
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            Container(
              height: 90,
              width: 90,
              // padding: EdgeInsets.all(0),
              // margin: EdgeInsets.all(20),
              // color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                children: [
                  FamousStoresWiddget('assets/images/popular1.png'),
                  FamousStoresWiddget('assets/images/popular2.png'),
                  FamousStoresWiddget('assets/images/popular3.png'),
                  FamousStoresWiddget('assets/images/popular4.png'),
                  FamousStoresWiddget('assets/images/popular5.png'),
                  FamousStoresWiddget('assets/images/popular6.png'),
                ],
              ),
            ),

            Text(
              'أفضل العروض',
              textAlign: TextAlign.right,
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            Container(
              height: 185,
              width: 200,
              // color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                children: [
                  SpecialProductWidget(
                      4.5, 24.12, 'assets/images/specialProduct1.png'),
                  SpecialProductWidget(
                      4.5, 24.12, 'assets/images/specialProduct2.png'),
                  SpecialProductWidget(
                      4.5, 24.12, 'assets/images/specialProduct1.png'),
                ],
              ),
            )
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // // bottomNavigationBar: BottomAppBar(
      // //   shape: CircularNotchedRectangle(),
      // //   notchMargin: 10,
      // //   child: Container(
      // //     height: 60,
      // //     child: Row(
      // //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // //       children: [
      // //         Row(
      // //           crossAxisAlignment: CrossAxisAlignment.start,
      // //           children: [
      // //             MaterialButton(
      // //               onPressed: () {},
      // //               minWidth: 40,
      // //               child: Column(
      // //                 mainAxisAlignment: MainAxisAlignment.center,
      // //                 children: [
      // //                   Icon(
      // //                     Icons.dashboard,
      // //                   ),
      // //                   Text('dashboard')
      // //                 ],
      // //               ),
      // //             )
      // //           ],
      // //         )
      // //       ],
      // //     ),
      // //   ),
      // // ),

      // bottomNavigationBar: BottomNavigationBar(items: [

      // ]),

      // floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
