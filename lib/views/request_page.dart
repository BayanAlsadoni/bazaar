import 'package:bazaar/views/home.dart';
import 'package:bazaar/views/store_main.dart';
import 'package:bazaar/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../colors/custom_colors.dart';

class RequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('الطلبات'),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shadowColor: Colors.transparent,
        ),
        body: Column(children: [
          TabBar(
              labelColor: Colors.black,
              dividerColor: CustomColors.redColor,
              tabs: [
                Tab(
                  text: 'المراجعات',
                ),
                Tab(
                  text: 'المراجعات',
                ),
                Tab(
                  text: 'المراجعات',
                ),
              ]),
          Expanded(
              child: TabBarView(
            // children: [
            //   ElementsWidget(),
            //   RevistionsWidget(),
            //   RevistionsWidget()
            // ]
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    RequestWidget(),
                    RequestWidget(),
                    RequestWidget(),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    RequestWidget(),
                    RequestWidget(),
                    RequestWidget(),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    RequestWidget(),
                    RequestWidget(),
                    RequestWidget(),
                  ],
                ),
              ),
            ],
          ))
        ]),
      ),
    );
  }
}

class RequestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 224, 224, 224),
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
        textDirection: TextDirection.rtl,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/images/popular4.png', width: 70),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'متجر المنى',
                  textAlign: TextAlign.right,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(
                      'غزة',
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                Text(
                  '#124166 | X2',
                  textAlign: TextAlign.right,
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.date_range),
                        Text('15-AUG-2020 '),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [Text('02:35 '), Icon(Icons.alarm)],
                    )
                  ],
                )
              ],
            ),
          ),

          // Container(

          // )
        ],
      ),
    );
  }
}
