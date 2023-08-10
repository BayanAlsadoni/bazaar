import 'package:bazaar/colors/custom_colors.dart';
import 'package:bazaar/views/add_new_address.dart';
import 'package:bazaar/views/payment_methods.dart';
import 'package:bazaar/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ShippingAddressesPage extends StatefulWidget {
  @override
  State<ShippingAddressesPage> createState() => _ShippingAddressesPageState();
}

class _ShippingAddressesPageState extends State<ShippingAddressesPage> {
  String ischecked = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('عناوين الشحن'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Column(
        textDirection: TextDirection.rtl,
        children: [
          RadioListTile(

              // contentPadding: ,
              // subtitle: Text('055553333'),
              title: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'الاسم',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          // textAlign: TextAlign.right,
                        ),
                        Text(
                          '0564842365',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Palistain | Gaza | RashidStreat| P340',
                              style: TextStyle(
                                  color: CustomColors.redColor, fontSize: 10),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              // tileColor: ,
              // secondary: Icon(Icons.edit),
              groupValue: ischecked,
              activeColor: CustomColors.redColor,
              selectedTileColor: CustomColors.redColor,
              value: 'address1',
              onChanged: (v) {
                ischecked = v ?? ischecked;
                setState(() {});
                // ischecked =v;
              }),
          SizedBox(height: 15),
          RadioListTile(

              // contentPadding: ,
              // subtitle: Text('055553333'),
              title: Container(
                padding: EdgeInsets.all(20),
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
                  textDirection: TextDirection.rtl,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'الاسم',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          // textAlign: TextAlign.right,
                        ),
                        Text(
                          '0564842365',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Palistain | Gaza | RashidStreat| P340',
                              style: TextStyle(
                                  color: CustomColors.redColor, fontSize: 10),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              // tileColor: ,
              // secondary: Icon(Icons.edit),
              groupValue: ischecked,
              activeColor: CustomColors.redColor,
              selectedTileColor: CustomColors.redColor,
              value: 'address1',
              onChanged: (v) {
                // ischecked =v;
              }),
          SizedBox(height: 30),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.3),
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return AddNewAddressPage();
                  }));
                },
                child: Text(
                  'إضافة عنوان جديد',
                  style: TextStyle(color: CustomColors.redColor),
                )),
          ),
          SizedBox(height: 5),
          CustomButton('متابعة', PaymentMethods())
        ],
      ),
    );
  }
}
