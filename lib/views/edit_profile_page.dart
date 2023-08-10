import 'package:bazaar/colors/custom_colors.dart';
import 'package:bazaar/views/seller/seller_home.dart';
import 'package:bazaar/views/widgets/custom_text_field_2.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'تعديل الملف الشخصي',
          textAlign: TextAlign.center,
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          TextButton(
              style: ButtonStyle(alignment: Alignment.centerLeft),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return SellerHome();
                })));
              },
              child: Text(
                'تم',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: CustomColors.redColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            textDirection: TextDirection.rtl,
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 40,
                // foregroundColor: Colors.grey.withOpacity(0.5),
              ),
              EditProfileTextField('الاسم', 'my name'),
              EditProfileTextField('البرد الالكتروني', 'myname@gmail.com'),
              EditProfileTextField('رقم الجوال', '545-556-666'),
              EditProfileTextField('المدينة', 'ادخل المدينة'),
              EditProfileTextField('العنوان', 'شارع الرشيد-ميناء الصيادين'),
            ],
          ),
        ),
      ),
    );
  }
}

// Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//           child: Container(
//             // height: 75,
//             // margin: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Color.fromARGB(129, 174, 174, 174),
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: TextFormField(
//               // cursorHeight: 5,
//               // cursorWidth: 5,
//               textAlign: TextAlign.right,
//               decoration: InputDecoration(
//                   hintText: 'name',
//                   alignLabelWithHint: true,
//                   // label: Text(
//                   //   'data',
//                   //   textAlign: TextAlign.right,
//                   //   style: TextStyle(color: Colors.black26),
//                   // ),
//                   // labelStyle: TextStyle(color: Colors.black),
//                   // labelText: 'jjjj',
//                   //     // isCollapsed: true,
//                   contentPadding: EdgeInsets.only(right: 15),
//                   // hintStyle: TextStyle(height: 1),
//                   border: InputBorder.none),
//             ),
//           ),
//         )

class EditProfileTextField extends StatelessWidget {
  TextEditingController txtController = TextEditingController();

  String text;
  String hint;
  EditProfileTextField(this.text, [this.hint = '']);

  List names = ['ahmed', 'ali', 'sami'];

  @override
  Widget build(BuildContext context) {
    txtController.text = hint;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          text,
          textAlign: TextAlign.right,
        ),
        Container(
          // margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(129, 174, 174, 174),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            controller: txtController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                hintText: hint,
                //     // isCollapsed: true,
                contentPadding: EdgeInsets.only(right: 15),
                // hintStyle: TextStyle(height: 1),
                border: InputBorder.none),
          ),
        )
      ]),
    );
  }
}
