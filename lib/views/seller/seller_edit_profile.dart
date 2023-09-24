import 'package:bazaar/colors/custom_colors.dart';
import 'package:flutter/material.dart';

class SellerEditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('تعديل الملف الشخصي'),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        // titleTextStyle: TextStyle(color: Colors.black),
        foregroundColor: Colors.black,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'تم',
                style: TextStyle(color: CustomColors.redColor),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
