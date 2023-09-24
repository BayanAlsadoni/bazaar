import 'package:bazaar/views/blog_page.dart';
import 'package:bazaar/views/concat_us_page.dart';
import 'package:bazaar/views/edit_profile_page.dart';
import 'package:bazaar/views/payment_methods.dart';
import 'package:bazaar/views/request_page.dart';
import 'package:bazaar/views/shipping_addresses_page.dart';
import 'package:bazaar/views/widgets/payment_method_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors/custom_colors.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: CustomColors.redColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('الملف الشخصي', style: TextStyle(color: Colors.white)),
                CircleAvatar(backgroundColor: Colors.white, maxRadius: 30),
                Text('الاسم', style: TextStyle(color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 17,
                    ),
                    Text(
                      'غزة-الميناء-شارع الرشيد',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ProfileWidget(
              'تعديل الملف الشخصي', 'edit_profile_icon.svg', EditProfilePage()),
          ProfileWidget('الطلبات', 'request_icon.svg', RequestPage()),
          ProfileWidget(
              'عناوين الشحن', 'shipping_icon.svg', ShippingAddressesPage()),
          ProfileWidget('المدونة', 'blog_icon.svg', blogPage()),
          ProfileWidget(
              'طرق الدفع', 'payment_method_icon.svg', PaymentMethods()),
          ProfileWidget('تواصل معنا', 'concat_us_icon.svg', ConcatUsPage()),
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
    );
  }
}

class ProfileWidget extends StatelessWidget {
  String title;
  String iconName;
  Widget screen;
  ProfileWidget(this.title, this.iconName, this.screen);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return screen;
          }));
        },
        title: Text(title),
        leading: SvgPicture.asset('assets/images/$iconName'),
        trailing: Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
