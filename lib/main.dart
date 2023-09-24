import 'package:bazaar/models/sp_helper.dart';
import 'package:bazaar/views/conditions_and_terms.dart';
import 'package:bazaar/views/home.dart';
import 'package:bazaar/views/product_details_page.dart';
import 'package:bazaar/views/registration/choose_register_type.dart';
import 'package:bazaar/views/registration/forget_password.dart';
import 'package:bazaar/views/registration/select_user_type.dart';
import 'package:bazaar/views/registration/signin.dart';
import 'package:bazaar/views/registration/signup.dart';
import 'package:bazaar/views/search_result.dart';
import 'package:bazaar/views/seller/seller_home.dart';
import 'package:bazaar/views/seller/seller_main_page.dart';
import 'package:bazaar/views/seller/seller_sing_up.dart';
import 'package:bazaar/views/splash.dart';
import 'package:bazaar/views/type_page.dart';
import 'package:bazaar/views/welcomPages/first_welcome_page.dart';
import 'package:bazaar/views/welcomPages/second_welcome_page.dart';
import 'package:bazaar/views/welcomPages/third_welcome_page.dart';
import 'package:bazaar/views/welcomPages/welcom.dart';
import 'package:bazaar/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SPHelper.initSP();

  runApp(MaterialApp(home: Splash()));
}

class Student {
  String name;
  int age;
  bool? isMale;

  Student(this.name, this.age, this.isMale); //unnamed consturctor

  Student.ABC(this.name, this.age); //named Condstructor

  String studentName() {
    return name.toUpperCase();
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
