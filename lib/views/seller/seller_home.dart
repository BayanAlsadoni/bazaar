import 'package:bazaar/views/notification_page.dart';
import 'package:bazaar/views/request_page.dart';
import 'package:bazaar/views/seller/seller_edit_profile.dart';
import 'package:bazaar/views/seller/seller_main_page.dart';
import 'package:bazaar/views/seller/seller_notification.dart';
import 'package:bazaar/views/seller/seller_walt_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors/custom_colors.dart';
import '../edit_profile_page.dart';
import '../profile_page.dart';
import 'add_product.dart';

class SellerHome extends StatefulWidget {
  @override
  State<SellerHome> createState() => _SellerHomeState();
}

class _SellerHomeState extends State<SellerHome> {
  PageController pageController = PageController();

  int index = 0;
  String image = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          index = value;
          print(index.toString());
          setState(() {});
        },
        children: [
          // Padding(padding: const EdgeInsets.all(10),
          // child: HomePage()),
          SellerMainPage(),
          SellerNotificationPage(),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          // padding: EdgeInsets.all(10),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            textDirection: TextDirection.rtl,
            children: [
              MaterialButton(
                onPressed: () {
                  pageController.jumpToPage(1);
                },
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      index == 0
                          ? Icons.notifications_none
                          : Icons.notifications_on_sharp,
                      color: CustomColors.redColor,
                    ),
                    Text(index == 0 ? '' : 'الإشعارات')
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  pageController.jumpToPage(0);

                  setState(() {});
                },
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(index == 0
                        ? 'assets/images/home_icon.svg'
                        : 'assets/images/unselected_home_icon.svg'),
                    Text(index == 0 ? 'الرئيسية' : '')
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //     unselectedItemColor: CustomColors.orange,
      //     selectedItemColor: CustomColors.redColor,
      //     currentIndex: index,
      //     onTap: (value) {
      //       index = value;
      //       // // pageController.animateToPage(index,
      //       // //     duration: Duration(milliseconds: 10),
      //       // //     curve: Curves.bounceInOut);
      //       pageController.jumpToPage(index);
      //       setState(() {});
      //     },
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: SvgPicture.asset('assets/images/shop_store.svg'),
      //           label: "market"),
      //       BottomNavigationBarItem(
      //           activeIcon:
      //               SvgPicture.asset('assets/images/selected_favorit_icon.svg'),
      //           icon: SvgPicture.asset('assets/images/heart_icon.svg'),
      //           label: "favorit"),
      //     ]),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return AddProductPage();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: CustomColors.redColor,
      ),

      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                // child: Image.asset('assets/images/category1.svg'),
                minRadius: 40,
              ),
              Text('مشغل إبرة'),
              Text('متجر'),
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 113, 112, 112),
                      blurRadius: 0.5,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 0.5,
                      offset: Offset.infinite)
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // crossAxisAlignment: CrossA,
                      children: [
                        Text(
                          'طلبات مكتملة',
                          // style: TextStyle(fontSize: 10),
                        ),
                        Text('1489')
                      ],
                    ),
                    Column(
                      children: [Text('قيد التوصيل'), Text('21')],
                    ),
                    Column(
                      children: [Text('المنتجات في المخزن'), Text('249')],
                    ),
                  ],
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return EditProfilePage();
                    }));
                  },
                  title: Text('تعديل الملف الشخصي'),
                  leading:
                      SvgPicture.asset('assets/images/edit_profile_icon.svg'),
                ),
              ),
              Divider(),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return RequestPage();
                    }));
                  },
                  title: Text('الطلبات'),
                  leading: SvgPicture.asset('assets/images/request_icon.svg'),
                ),
              ),
              Divider(),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    //   return 'screen';
                    // }));
                  },
                  title: Text('سحب الأرباح'),
                  leading: SvgPicture.asset('assets/images/profit_icon.svg'),
                ),
              ),
              Divider(),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SellerWaltPage();
                    }));
                  },
                  title: Text('محفظة'),
                  leading:
                      SvgPicture.asset('assets/images/payment_method_icon.svg'),
                ),
              ),
              Divider(),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    //   return 'screen';
                    // }));
                  },
                  title: Text('تواصل معنا'),
                  leading: SvgPicture.asset('assets/images/concat_us_icon.svg'),
                ),
              ),
              Divider(),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    //   return 'screen';
                    // }));
                  },
                  title: Text('الاعدادات'),
                  leading: SvgPicture.asset('assets/images/setting_icon.svg'),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('تسجيل خروج'),
                  textColor: CustomColors.redColor,
                  leading: SvgPicture.asset('assets/images/log_out_icon.svg'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
