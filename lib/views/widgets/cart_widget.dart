import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartWidget extends StatefulWidget {
  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key('hi'),
      child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ]),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    child: Image.asset(
                      'assets/images/specialProduct2.png',
                      height: 90,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Column(children: [
                  Text('ثوب فلسطيني مطرز'),
                  Text('25\$ X 2'),
                  Text('أحمر XL')
                ]),
                Row(
                  children: [
                      Icon(Icons.add),
                      Text('2  '),
                      SvgPicture.asset('assets/images/subtract_icon.svg',
                          colorFilter:
                              ColorFilter.mode(Colors.black, BlendMode.src)),
                    ])
              ])),
      onDismissed: (direction) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  'حذف عنصر واحد',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'هل أنت متأكد أنك تريد حذف عنصر واحد من سلة المشتريات؟',
                  textAlign: TextAlign.center,
                ),
                actions: [
                  TextButton(onPressed: () {}, child: Text('نقل إلى المفضلة')),
                  TextButton(onPressed: () {}, child: Text('حذف'))
                ],
              );
            });
      },
    );
  }
}
