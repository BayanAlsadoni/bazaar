import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors/custom_colors.dart';
import '../widgets/custom_text_field.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "نسيت كلمة المرور",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        SizedBox(
          height: 20,
        ),
        Image.asset(
          "assets/images/forget_password.png",
          width: 150,
          height: 150,
        ),
        // SvgPicture.asset("assets/images/test.svg", semanticsLabel: 'Acme Logo')
        SizedBox(
          height: 50,
        ),
        CustomTextField("البريد الالكتروني", Icons.email_outlined),
        // SizedBox(
        //   height: 10,
        // ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {},
            child: Text("إرسال"),
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => CustomColors.redColor)),
          ),
        ),
        // SizedBox(
        //   height: 20,
        // ),
        TextButton(
            onPressed: () {},
            child: Text(
              "إعادة إرسال",
              style: TextStyle(color: CustomColors.redColor),
            )),
      ]),
    );
  }
}
