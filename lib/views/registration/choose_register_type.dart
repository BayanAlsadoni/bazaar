import 'package:bazaar/colors/custom_colors.dart';
import 'package:bazaar/views/registration/select_user_type.dart';
import 'package:flutter/material.dart';

class ChooseRegisterationType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Image.asset(
            "assets/images/Logo2_colorfull.png",
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            """اكتشف الجديد 
      تمتع بأفضل العروض""",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SelectUserType();
              }));
            },
            child: Text("تسجيل دخول"),
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => CustomColors.redColor)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: CustomColors.redColor),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              child: Text(
                "حساب جديد",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SelectUserType();
                }));
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "أو",
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "التسجيل لاحقا",
                style: TextStyle(color: Colors.black87),
              ))
        ]),
      ),
    );
  }
}
