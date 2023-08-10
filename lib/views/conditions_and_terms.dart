import 'package:flutter/material.dart';

import '../colors/custom_colors.dart';

class ConditionsAndTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "الأحكام والشروط",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(10),
                  scrollDirection: Axis.vertical, //.horizontal
                  child: Text(
                    """تمنع محدودية الوصول إلى السوق العالمية العديد من الحرفيات
       الفلسطينيات الموهوبات من بناء مهن من خ  ل مهاراتهن
       في الخياطة والتطريز والتصميم أنشأت مركز الحرفيين ”كأس
       الطفل الكامل“ في الزبابدة ، وهي قرية في شمال 
      الضفة الغربية ، بهدف خلق فرصة اقتصادية دائمة للمجتمعات
       كثر تهميشًا في الضفة الغربية: ال  جئات والفقيرات
      .على مدار السنوات ا  ربع الماضية ، أنشأت المنظمة الصغيرة
       غير الربحية خطي إنتاج للسوق الامريكية.
      تمنع محدودية الوصول إلى السوق العالمية العديد من الحرفيات
       الفلسطينيات الموهوبات من بناء مهن من خ  ل مهاراتهن
       في الخياطة والتطريز والتصميم أنشأت مركز الحرفيين ”كأس
       الطفل الكامل“ في الزبابدة ، وهي قرية في شمال 
      الضفة الغربية ، بهدف خلق فرصة اقتصادية دائمة للمجتمعات
       كثر تهميشًا في الضفة الغربية: ال  جئات والفقيرات
      .على مدار السنوات ا  ربع الماضية ، أنشأت المنظمة الصغيرة
       غير الربحية خطي إنتاج للسوق الامريكية.
      تمنع محدودية الوصول إلى السوق العالمية العديد من الحرفيات
       الفلسطينيات الموهوبات من بناء مهن من خ  ل مهاراتهن
       في الخياطة والتطريز والتصميم أنشأت مركز الحرفيين ”كأس
       الطفل الكامل“ في الزبابدة ، وهي قرية في شمال 
      الضفة الغربية ، بهدف خلق فرصة اقتصادية دائمة للمجتمعات
       كثر تهميشًا في الضفة الغربية: ال  جئات والفقيرات
      .على مدار السنوات ا  ربع الماضية ، أنشأت المنظمة الصغيرة
       غير الربحية خطي إنتاج للسوق الامريكية.
      تمنع محدودية الوصول إلى السوق العالمية العديد من الحرفيات
       الفلسطينيات الموهوبات من بناء مهن من خ  ل مهاراتهن""",
                    textAlign: TextAlign.right,
                  ),
                )),
            ElevatedButton(
                onPressed: () {},
                child: Text("أوافق"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => CustomColors.redColor)))
          ],
        ),
      ),
    );
  }
}
