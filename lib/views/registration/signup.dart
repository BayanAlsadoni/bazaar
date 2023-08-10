import 'package:bazaar/models/sp_helper.dart';
import 'package:bazaar/views/conditions_and_terms.dart';
import 'package:bazaar/views/registration/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors/custom_colors.dart';
import '../../models/user_type.dart';
import '../home.dart';
import '../seller/seller_home.dart';
import '../widgets/custom_text_field.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "assets/images/Logo.png",
                  width: 100,
                  height: 100,
                ),
              ),
              Text(
                "إنشاء حساب",
                textAlign: TextAlign.center,
              ),
              CustomTextField("الاسم", Icons.person_2_outlined),
              CustomTextField("البريد الالكتروني", Icons.email_outlined),
              CustomTextField("كلمة المرور", Icons.remove_red_eye),
              CustomTextField("رقم الجول", Icons.phone_outlined),
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ConditionsAndTerms();
                    }));
                  },
                  child: Text(
                    "الأحكام والشروط",
                    style:
                        TextStyle(color: CustomColors.redColor, fontSize: 15),
                  )),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    // if (SPHelper.getItem('seller') != null) {
                    if (UserType.isSeller) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return SellerHome();
                      }));
                    }
                    // if (SPHelper.getItem('customer') != null) {
                    else {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    }
                  },
                  child: Text("إنشاء"),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Text("أو"),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                    ),
                  )
                ],
              ),
              // Divider(
              //   height: 2,
              //   thickness: 2,
              // )
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // IconButton(onPressed: (){}, icon:Icon( Icons.facebook))
                  Container(
                    width: 50,
                    height: 40,
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: SvgPicture.asset("assets/images/facebook_icon.svg",
                        semanticsLabel: 'Acme Logo'),
                  ),
                  Container(
                    width: 50,
                    height: 40,
                    padding: EdgeInsets.all(13),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: SvgPicture.asset("assets/images/email.svg",
                        semanticsLabel: 'Acme Logo'),
                  ),
                  Container(
                    width: 50,
                    height: 40,
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: SvgPicture.asset("assets/images/twitter.svg",
                        semanticsLabel: 'Acme Logo'),
                  ),
                ],
              ),
              Container(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
