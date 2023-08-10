import 'package:bazaar/views/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'blog_page_explain.dart';

class blogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('المدونة'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SearchWidget(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BlogWidget('store2.png'),
                BlogWidget('store2.png'),
                BlogWidget('store2.png'),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BlogWidget2('store2.png'),
                  BlogWidget2('store2.png'),
                  BlogWidget2('store2.png'),
                  BlogWidget2('store2.png'),
                  BlogWidget2('store2.png'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BlogWidget extends StatelessWidget {
  String imageName;
  BlogWidget(this.imageName);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 140,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage(
              'assets/images/$imageName',
            ),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 50,
            width: 130,
            child: Text(
              'نعمل على خلق فرص عمل للنساء اللاجئات ذوات الدخل المنخفض في فلسطين',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              SvgPicture.asset(
                'assets/images/date.svg',
                width: 14,
              ),
              Text(
                'فبراير 26 2022',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              SvgPicture.asset(
                'assets/images/chance_icon.svg',
                width: 14,
              ),
              Text(
                'فرص عمل',
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BlogWidget2 extends StatelessWidget {
  String imageName;
  BlogWidget2(this.imageName);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return BlogPageExplain();
        }));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 205, 205, 205),
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset: Offset(
                    2,
                    1,
                  ),
                  blurStyle: BlurStyle.normal)
            ]),
        height: 120,
        // width: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            Container(
              width: 70,
              height: 80,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Image.asset(
                'assets/images/store2.png',
                // width: 70,
                // height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'نعمل على خلق فرص عمل للنساء اللاجئات ذوات الدخل المنخفض في فلسطين',
                    textAlign: TextAlign.right,
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      SvgPicture.asset(
                        'assets/images/date.svg',
                        width: 14,
                        colorFilter:
                            ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                      ),
                      Text(
                        'فبراير 26 2022',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(
                        'assets/images/chance_icon.svg',
                        width: 14,
                        colorFilter:
                            ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                      ),
                      Text(
                        'فرص عمل',
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//  ListTile(
      
//       // shape: BeveledRectangleBorder(
//       //     borderRadius: BorderRadius.circular(10), side: BorderSide()),
//       // style: ListTileStyle.list,
//       trailing: Image.asset(
//         'assets/images/$imageName',
//         width: 80,
//         // height: 100,
//         fit: BoxFit.cover,
//       ),
//       title: Text(
//         'نعمل على خلق فرص عمل للنساء اللاجئات ذوات الدخل المنخفض في فلسطين',
//         textAlign: TextAlign.right,
//       ),
//       subtitle: Expanded(
//         child: Row(
//           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           textDirection: TextDirection.rtl,
//           children: [
//             SvgPicture.asset(
//               'assets/images/date.svg',
//               width: 14,
//               colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
//             ),
//             Text(
//               'فبراير 26 2022',
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             SvgPicture.asset(
//               'assets/images/chance_icon.svg',
//               width: 14,
//               colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
//             ),
//             Text(
//               'فرص عمل',
//             )
//           ],
//         ),
//       ),
//     );


