import 'package:bazaar/views/seller/join_as_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors/custom_colors.dart';
import '../conditions_and_terms.dart';
import '../registration/signin.dart';
import '../widgets/custom_text_field.dart';

class SellerSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "assets/images/Logo.png",
                  width: 100,
                  height: 75,
                ),
              ),
              Text(
                "انضم كتاجر",
                textAlign: TextAlign.center,
              ),
              CustomTextField("الاسم", Icons.person_2_outlined),
              CustomTextField("البريد الالكتروني", Icons.email_outlined),
              CustomTextField("كلمة المرور", Icons.remove_red_eye),
              CustomTextField("رقم الجوال", Icons.phone_outlined),
              CustomTextField("المدينة", Icons.location_on_outlined),
              CustomTextField("العنوان", Icons.location_on_outlined),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return JoinAsStore();
                    }));
                  },
                  child: Text("التالي"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => CustomColors.redColor)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("لديك حساب بالفعل؟"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Signin();
                        }));
                      },
                      child: Text(
                        "تسجل الدخول",
                        style: TextStyle(color: CustomColors.redColor),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
