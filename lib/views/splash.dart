import 'package:bazaar/models/sp_helper.dart';
import 'package:bazaar/views/registration/choose_register_type.dart';
import 'package:bazaar/views/welcomPages/welcom.dart';
import 'package:flutter/material.dart';

import '../colors/custom_colors.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  navigationFun(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3));
    bool result = SPHelper.checkFirstTime();
    if (result) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: ((context) {
        return WelcomPage();
      })));
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return ChooseRegisterationType();
      }));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigationFun(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: CustomColors.redColor,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/traditional_woman_image.png',
              ),
            ),
          ),
          // height: 350.0,
        ),
        Container(
          // height: 350.0,
          decoration: BoxDecoration(
              // image: DecorationImage(
              //     // fit: BoxFit.fitWidth,

              //     image: AssetImage(
              //       'assets/images/LogoWhait.png',
              //     ),
              //     alignment: Alignment.center),
              color: CustomColors.redColor,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    CustomColors.redColor.withOpacity(0.4),
                    CustomColors.redColor,
                  ],
                  stops: [
                    0.0,
                    1.0
                  ])),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/LogoWhait.png',
            width: 200,
            height: 200,
          ),
        )
      ]),

      //  Container(
      //   decoration: BoxDecoration(
      //     color: Colors.transparent,
      //     image: DecorationImage(
      //       fit: BoxFit.cover,
      //       image: AssetImage(
      //         'assets/images/traditional_woman_image.png',
      //       ),
      //     ),
      //   ),
      //   // height: 350.0,
      // ),

      // Container(
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   // color: CustomColors.redColor,
      //   decoration: BoxDecoration(
      //       color: CustomColors.redColor,
      //       image: DecorationImage(
      //           image:
      //               AssetImage("assets/images/traditional_woman_image.png"))),
      //   // child: Image.asset(
      //   //   "assets/images/traditional_woman_image.png",
      //   //   // height: MediaQuery.of(context).size.height,
      //   //   // alignment: Alignment.ci==,
      //   //   fit: BoxFit.cover,
      //   //   // colorBlendMode: BlendMode.hardLight,
      //   //   // color: CustomColors.redColor
      //   // ),
      // ),
    );
  }
}
