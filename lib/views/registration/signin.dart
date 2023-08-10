import 'package:bazaar/views/registration/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors/custom_colors.dart';
import '../widgets/custom_text_field.dart';
import 'forget_password.dart';

class Signin extends StatelessWidget {
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
                padding: const EdgeInsets.all(40),
                child: Image.asset(
                  "assets/images/Logo.png",
                  width: 100,
                  height: 90,
                ),
              ),
              Text(
                "تسجيل دخول",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 15),
              CustomTextField("البريد الالكتروني", Icons.email_outlined),
              CustomTextField("كلمة المرور", Icons.remove_red_eye),

              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("تسجيل دخول"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => CustomColors.redColor)),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ForgetPassword();
                    }));
                  },
                  child: Text(
                    "نسيت كلمة المرور",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("ليس لديك حساب؟"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Signup();
                        }));
                      },
                      child: Text(
                        "إنشاء حساب",
                        style: TextStyle(color: CustomColors.redColor),
                      ))
                ],
              ),
              SizedBox(height: 15),
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
              SizedBox(height: 15),
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
