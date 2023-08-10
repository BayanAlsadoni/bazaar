import 'package:bazaar/colors/custom_colors.dart';
import 'package:bazaar/views/registration/signin.dart';
import 'package:bazaar/views/widgets/custom_button.dart';
import 'package:bazaar/views/widgets/custom_text_field.dart';
import 'package:bazaar/views/widgets/custom_text_field_2.dart';
import 'package:flutter/material.dart';

import '../conditions_and_terms.dart';

class JoinAsStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('انضم كمتجر'),
        centerTitle: true,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blueGrey,
            minRadius: 40,
          ),
          Text('شعار المتجر'),
          CustomTextField('اسم المتجر', Icons.person_2_outlined),
          Container(
              // padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(

                    // isCollapsed: true,
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'نبذة مختصرة',
                    hintStyle: TextStyle(height: 1),
                    border: InputBorder.none),
              )),
          CheckboxListTile(
            value: true,
            onChanged: (v) {},
            title: Row(
              textDirection: TextDirection.rtl,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('أوافق على'),
                InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ConditionsAndTerms();
                      }));
                    },
                    child: Text(
                      'الشروط والأحكام',
                      style: TextStyle(color: CustomColors.redColor),
                    ))
              ],
            ),
          ),
          CustomButton('انضمام', Signin())
        ],
      ),
    );
  }
}
