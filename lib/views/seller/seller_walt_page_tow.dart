import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SellerWaltPageTow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('المحفظة'),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SvgPicture.asset(
                  'assets/images/card_background_2.svg',
                  alignment: Alignment.center,
                ),
                Container(
                  padding: EdgeInsets.all(35),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('assets/images/card_code.svg'),
                            Text(
                              'Finaci',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '**** **** ****',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              'Card Holder name',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              'Expriy date',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Austin Hammond',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              '02/30',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
            Text('الاسم كامل'),
            WaltWidget(),
            Text('المبلغ'),
            WaltWidget(),
          ],
        ),
      ),
    );
  }
}

class WaltWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(right: 10),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 215, 214, 214),
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
