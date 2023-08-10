import 'package:bazaar/colors/custom_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/welcome_widget.dart';

class SecondWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WelcomeWidget("assets/images/2.png");

    // return Scaffold(
    //   body: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: [
    //       Image.asset(
    //         "assets/images/222222.png",
    //         fit: BoxFit.cover,
    //         height: MediaQuery.of(context).size.height / 2,
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Row(
    //         children: [
    //           Container(
    //             width: 5,
    //             height: 5,
    //             color: Colors.grey,
    //           )
    //         ],
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Text(
    //         "العنوان",
    //         textAlign: TextAlign.right,
    //         style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Text(
    //         "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam",
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Container(
    //         margin: EdgeInsets.all(15),
    //         width: double.infinity,
    //         child: ElevatedButton(
    //             onPressed: () {},
    //             child: Text("التالي"),
    //             style: ButtonStyle(
    //                 backgroundColor: MaterialStateColor.resolveWith(
    //                     (states) => CustomColors.redColor))),
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Expanded(
    //         child: Container(
    //           // height: double.infinity,
    //           alignment: Alignment.bottomCenter,
    //           child: TextButton(
    //               onPressed: () {},
    //               child: Text(
    //                 "تخطي",
    //                 style: TextStyle(
    //                   color: Colors.grey,
    //                 ),
    //               )),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
