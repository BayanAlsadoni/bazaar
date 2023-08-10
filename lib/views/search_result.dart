import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(height: 50),
      Text('نتائج البحث'),
      Row(children: [
        Container(
            margin: EdgeInsets.only(left: 10),
            child: SvgPicture.asset('assets/images/filter.svg')),
        // Expanded(child: TextField(decoration: InputDecoration(hintText: 'fpe')))
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(129, 158, 158, 158),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(

                  //     // isCollapsed: true,
                  contentPadding: EdgeInsets.only(right: 15),
                  hintText: 'بحث',
                  // hintStyle: TextStyle(height: 1),
                  border: InputBorder.none),
            ),
          ),
        )
      ])
    ]));
  }
}
