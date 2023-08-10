import 'package:bazaar/colors/custom_colors.dart';
import 'package:bazaar/views/widgets/welcome_widget.dart';
import 'package:flutter/material.dart';

class FirstWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WelcomeWidget("assets/images/1.png");

    // return Scaffold(
    //   body: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: [
    //       SizedBox(
    //         width: MediaQuery.of(context).size.width,
    //         child: Image.asset(
    //           "assets/images/11111.png",
    //           width: double.infinity,
    //           fit: BoxFit.cover,
    //           height: MediaQuery.of(context).size.height / 2,
    //         ),
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       // Container(
    //       //   height: 100,
    //       //   width: 100,
    //       //   decoration: BoxDecoration(
    //       //       border: Border.all(
    //       //           color: Colors.black, width: 10, style: BorderStyle.solid),
    //       //       color: Colors.amber,
    //       //       borderRadius: BorderRadius.circular(300)),
    //       //   child: Image.asset("assets/images/welcome_image_1.png",
    //       //       fit: BoxFit.cover),
    //       // ),
    //       // ClipPath(
    //       // clipBehavior: Clip.hardEdge,

    //       // borderRadius: BorderRadius.vertical(bottom: Radius.circular(1000)),
    //       // child:
    //       // Image.asset(
    //       //   "assets/images/welcome_image_1.png",
    //       //   fit: BoxFit.cover,

    //       //   // centerSlice: Rect.fromCircle(radius: 10, center: Offset(10, 5)),
    //       //   width: double.infinity,
    //       //   height: MediaQuery.of(context).size.height / 3,
    //       // ),
    //       // ),

    //       Row(
    //         children: [
    //           Container(
    //             width: 5,
    //             height: 5,
    //             color: Colors.grey,
    //           )
    //         ],
    //       ),
    //       Text(
    //         "العنوان",
    //         style: TextStyle(
    //           fontSize: 15,
    //           fontWeight: FontWeight.bold,
    //         ),
    //         textAlign: TextAlign.right,
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
