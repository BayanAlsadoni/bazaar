import 'package:bazaar/views/home.dart';
import 'package:bazaar/views/widgets/custom_button.dart';
import 'package:bazaar/views/widgets/custom_text_field_2.dart';
import 'package:flutter/material.dart';

class AddNewAddressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'إضافة عنوان جديد',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            CustomTextField2('الاسم الكامل'),
            CustomTextField2('رقم الجوال'),
            CustomTextField2('الدولة'),
            CustomTextField2('المدينة'),
            CustomTextField2('الشارع'),
            CustomTextField2('رمز بريد'),
            CustomButton('حفظ', Home())
          ],
        ),
      ),
    );
  }
}
