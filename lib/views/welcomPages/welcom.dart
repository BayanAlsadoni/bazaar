import 'package:bazaar/views/welcomPages/first_welcome_page.dart';
import 'package:bazaar/views/welcomPages/second_welcome_page.dart';
import 'package:bazaar/views/welcomPages/third_welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../colors/custom_colors.dart';
import '../registration/choose_register_type.dart';

class WelcomPage extends StatefulWidget {
  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  int currentIndex = 0;

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            child: PageView(
                controller: controller,
                onPageChanged: (value) => setState(() {
                      currentIndex = value;
                    }),
                children: [
                  ThirdWelcomePage(),
                  SecondWelcomePage(),
                  FirstWelcomePage(),
                ]),
          ),
          SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.black,
              )),
          if (currentIndex != 2)
            Container(
              margin: EdgeInsets.all(15),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text("التالي"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => CustomColors.redColor))),
            ),
          if (currentIndex == 2)
            Container(
              margin: EdgeInsets.all(15),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return ChooseRegisterationType();
                    }));
                  },
                  child: Text("التالي"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => CustomColors.redColor))),
            ),
          Expanded(
              child: Container(
            alignment: Alignment.bottomCenter,
            child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ChooseRegisterationType();
                  }));
                },
                child: Text(
                  "تخطي",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )),
          ))
        ],
      ),
    );
  }
}
