import 'package:bazaar/colors/custom_colors.dart';
import 'package:bazaar/views/widgets/search_widget.dart';
import 'package:bazaar/views/widgets/special_product_widget.dart';
import 'package:bazaar/views/widgets/type_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

// class TypePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
//         SizedBox(height: 30),
//         Text(
//           "اكسسوارات",
//           textAlign: TextAlign.center,
//         ),
//         SearchWidget(),
//         SingleChildScrollView(
//           reverse: true,
//           scrollDirection: Axis.horizontal,
//           child: Row(children: [
//             TypeWidget('ملابس', 'assets/images/hanging_icon.svg'),
//             TypeWidget('مطرزات', 'assets/images/jewelry_icon.svg'),
//             TypeWidget('إكسسوارات', 'assets/images/brocaded_icon.svg'),
//             TypeWidget('معلقات', 'assets/images/clothes_icon.svg'),
//           ]),
//         ),
//         Container(
//           margin: EdgeInsets.all(10),
//           padding: EdgeInsets.all(10),
//           decoration: BoxDecoration(
//               color: CustomColors.orange,
//               borderRadius: BorderRadius.circular(10)),
//           child: Row(
//             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             textDirection: TextDirection.rtl,
//             children: [
//               Image.asset(
//                 'assets/images/jewelry1.png',
//                 height: 100,
//                 width: 100,
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Column(
//                 children: [
//                   Text(
//                     'إكسسوارات',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   Text('طقم إكسسوارات تطريز')
//                 ],
//               )
//             ],
//           ),
//         ),
//         Expanded(
//             //   child: Container(
//             // alignment: Alignment.center,
//             // height: 200,
//             child: GridView(
//           // physics: NeverScrollableScrollPhysics(),
//           // primary: true,
//           // shrinkWrap: true,
//           gridDelegate:
//               SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

//           physics: NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           //   crossAxisCount: 2,
//           //   mainAxisSpacing: 10,
//           //   crossAxisSpacing: 10,
//           //   childAspectRatio: 1.5,
//           //   // mainAxisExtent: 55,
//           // ),

//           children: [
//             Text("data"),
//             Text("data"),
//             Text("data"),
//             Text("data"),
//             Text("data"),
//             Text("data"),
//             // SpecialProductWidget(4.9, 24, 'assets/images/jewelry1.png'),
//             // SpecialProductWidget(4.9, 24, 'assets/images/jewelry3.png'),
//             // SpecialProductWidget(4.9, 24, 'assets/images/jewelry4.png'),
//             // // SpecialProductWidget(4.9, 24, 'assets/images/cover.png.png'),
//             // SpecialProductWidget(4.9, 24, 'assets/images/pillow.png'),
//             // SpecialProductWidget(4.9, 24, 'assets/images/jewelry3.png'),
//             // SpecialProductWidget(4.9, 24, 'assets/images/jewelry4.png'),
//             // SpecialProductWidget(4.9, 24, 'assets/images/pillow.png'),
//             // SpecialProductWidget(4.9, 24, 'assets/images/jewelry3.png'),
//             // SpecialProductWidget(4.9, 24, 'assets/images/jewelry4.png'),
//             // SpecialProductWidget(4.9, 24, 'assets/images/jewelry1.png'),
//           ],
//           // ),
//         ))
//       ]),
//     ));
//   }
// }

//  //  ListView(
//           //   children: [
//           //     Row(
//           //       mainAxisAlignment: MainAxisAlignment.center,
//           //       children: [
//           //         SpecialProductWidget(4.9, 24, 'assets/images/jewelry1.png'),
//           //         SpecialProductWidget(4.9, 24, 'assets/images/jewelry1.png'),
//           //       ],
//           //     )
//           //   ],
//           // ),

class TypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "اكسسوارات",
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(height: 30),
        SearchWidget(),
        SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            TypeWidget('ملابس', 'assets/images/hanging_icon.svg'),
            TypeWidget('مطرزات', 'assets/images/jewelry_icon.svg'),
            TypeWidget('إكسسوارات', 'assets/images/brocaded_icon.svg'),
            TypeWidget('معلقات', 'assets/images/clothes_icon.svg'),
          ]),
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: CustomColors.orange,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.rtl,
            children: [
              Image.asset(
                'assets/images/jewelry1.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    'إكسسوارات',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('طقم إكسسوارات تطريز')
                ],
              )
            ],
          ),
        ),
        GridView(
          // GridView.builder(
          padding: EdgeInsets.all(10),

          // itemCount: 10,
          children: [
            // Text('jjjj'),
            // Text('jjjj'),
            // Text('jjjj'),
            // Text('jjjj'),
            // Text('jjjj'),
            SpecialProductWidget(4.9, 24, 'assets/images/jewelry1.png'),
            SpecialProductWidget(4.9, 24, 'assets/images/jewelry3.png'),
            SpecialProductWidget(4.9, 24, 'assets/images/jewelry4.png'),
            // SpecialProductWidget(4.9, 24, 'assets/images/cover.png.png'),
            SpecialProductWidget(4.9, 24, 'assets/images/pillow.png'),
            SpecialProductWidget(4.9, 24, 'assets/images/jewelry3.png'),
            SpecialProductWidget(4.9, 24, 'assets/images/jewelry4.png'),
            SpecialProductWidget(4.9, 24, 'assets/images/pillow.png'),
            SpecialProductWidget(4.9, 24, 'assets/images/jewelry3.png'),
            SpecialProductWidget(4.9, 24, 'assets/images/jewelry4.png'),
            SpecialProductWidget(4.9, 24, 'assets/images/jewelry1.png'),

            SpecialProductWidget(4.9, 24, 'assets/images/jewelry1.png'),
            SpecialProductWidget(4.9, 24, 'assets/images/jewelry3.png'),
            SpecialProductWidget(4.9, 24, 'assets/images/jewelry4.png'),
            //
          ],

          // itemBuilder: (context, index) {
          //   print("index$index");
          //   return Container(
          //     decoration:
          //         BoxDecoration(borderRadius: BorderRadius.circular(10)),
          //     // color: Colors.amber,
          //     child: ListTile(
          //       trailing: IconButton(
          //         alignment: Alignment.bottomRight,
          //         icon: Icon(Icons.delete, size: 20),
          //         onPressed: () {},
          //       ),
          //       title: Text('jjjj'),
          //       onTap: () {
          //         print("category send ");

          //         print("category send");
          //       },
          //     ),
          //   );
          // },

          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.95,
            // mainAxisExtent: 200,
          ),
        )
      ])),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('hi'),
    //   ),
    //   body: Expanded(
    //       child: GridView.builder(
    //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //               crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
    //           itemCount: 12,
    //           itemBuilder: (context, index) {
    //             return Container(
    //               color: Colors.grey,
    //             );
    //           })),
    // );
  }
}
