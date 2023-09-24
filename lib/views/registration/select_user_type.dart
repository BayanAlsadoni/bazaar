import 'package:bazaar/models/sp_helper.dart';
import 'package:bazaar/views/registration/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/user_type.dart';

class SelectUserType extends StatelessWidget {
  // UserType user = UserType(isSeller: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            // image: DecorationImage(
            //   image:SvgPicture.asset("assetName") ,
            //   fit: BoxFit.cover,
            // ),

            ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 50,
            // ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image.asset(
                "assets/images/Logo.png",
                width: 200,
              ),
            ),

            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                "اختر المستخدم",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [

                    InkWell(
                      onTap: () {
                        SPHelper.createNewItem('seller', 'choos seller');
                        UserType.isSeller = true;
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Signup();
                        }));
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            color: Colors.white,
                            // color: Colors.teal,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),

                                blurRadius: 7,
                                offset: Offset(0, 3), // Shadow position
                              )
                            ]),
                        child: SvgPicture.asset("assets/images/seller.svg",
                            semanticsLabel: 'Acme Logo'),
                      ),
                    ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "تاجر",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [

                    InkWell(
                      onTap: () {
                        UserType.isSeller = false;
                        SPHelper.createNewItem('customer', 'choos customer');
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Signup();
                        }));
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: SvgPicture.asset("assets/images/customer.svg",
                            semanticsLabel: 'Acme Logo'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Text(
                        "مشتري",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                )
              ],
            ),

            Expanded(
              child: SvgPicture.asset("assets/images/select_background.svg",
                  semanticsLabel: 'Acme Logo'),
            ),
          ],
        ),
      ),
    );
  }
}
