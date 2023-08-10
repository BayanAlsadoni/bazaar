import 'dart:io';

import 'package:bazaar/views/seller/seller_home.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/custom_button.dart';

class AddProductPageStepTwo extends StatefulWidget {
  @override
  State<AddProductPageStepTwo> createState() => _AddProductPageStepTwoState();
}

class _AddProductPageStepTwoState extends State<AddProductPageStepTwo> {
  String? imagePath;
  File? image;

  pickMedia() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file != null) {
      imagePath = file.path;
      image = File(file.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('إضافة منتج جديد'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            textDirection: TextDirection.rtl,
            children: [
              Text(
                'الوصف',
                textAlign: TextAlign.right,
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                margin: EdgeInsets.all(5),
                // height: 100,
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 249, 249),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  // minLines: 2,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'أدخل الوصف',
                    hintTextDirection: TextDirection.rtl,
                    // floatingLabelAlignment: FloatingLabelAlignment.start
                    //  alignLabelWithHint: true
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'الصورة الرئيسية',
                  textAlign: TextAlign.right,
                ),
              ),
              imagePath != null
                  ? Image.file(File(imagePath!))
                  : InkWell(
                      onTap: () {
                        pickMedia();
                      },
                      child: DottedBorder(
                        color: Colors.black,
                        // gap: 3,
                        // borderPadding: EdgeInsets.all(15),
                        padding: EdgeInsets.all(5),
                        // strokeCap: StrokeCap.butt,
                        borderType: BorderType.RRect,
                        // radius: Radius.circular(80),
                        dashPattern: [7, 3],
                        strokeWidth: 1,
                        child: Container(
                          // margin: EdgeInsets.symmetric(vertical: 10),
                          width: 300,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/camera_icon.svg'),
                              Text('إضافة الصورة الرئيسية')
                            ],
                          ),
                        ),
                      )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'الصورة الفرعية',
                  textAlign: TextAlign.right,
                ),
              ),
              imagePath != null
                  ? Image.file(File(imagePath!))
                  : InkWell(
                      onTap: () {
                        pickMedia();
                      },
                      child: DottedBorder(
                        color: Colors.black,
                        padding: EdgeInsets.all(5),
                        strokeWidth: 1,
                        dashPattern: [7, 3],
                        child: Container(
                          width: 300,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/camera_icon.svg'),
                              Text('إضافة الصورة الفرعية')
                            ],
                          ),
                        ),
                      ),
                    ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'إضافة فيديو (إختياري)',
                  textAlign: TextAlign.right,
                ),
              ),
              imagePath != null
                  ? Image.file(File(imagePath!))
                  : InkWell(
                      onTap: () {
                        pickMedia();
                      },
                      child: DottedBorder(
                        color: Colors.black,
                        padding: EdgeInsets.all(5),
                        strokeWidth: 1,
                        dashPattern: [7, 3],
                        child: Container(
                          width: 300,
                          height: 100,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/video_icon.svg'),
                              Text('إضافة فيديو')
                            ],
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                height: 20,
              ),
              CustomButton('حفظ المنتج', SellerHome()),
              Container(
                decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return SellerHome();
                      }));
                    },
                    child: Text(
                      'إلغاء',
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
