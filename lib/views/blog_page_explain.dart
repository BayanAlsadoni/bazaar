import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class BlogPageExplain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textDirection: TextDirection.rtl,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.only(top: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/store2.png',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  'المدونة',
                  style: TextStyle(color: Colors.white),
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      width: 300,
                      child: Text(
                        'نعمل على خلق فرص عمل للنساء اللاجئات ذوات الدخل المنخفض في فلسطين',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      textDirection: TextDirection.rtl,
                      children: [
                        SvgPicture.asset(
                          'assets/images/profile_icon.svg',
                          colorFilter:
                              ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        ),
                        Text(
                          'أحمد محمد',
                          style: TextStyle(color: Colors.white),
                        ),
                        SvgPicture.asset('assets/images/position_icon.svg'),
                        Text(
                          'فلسطين-غزة',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        SvgPicture.asset(
                          'assets/images/date.svg',
                          width: 14,
                          colorFilter:
                              ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        ),
                        Text(
                          'فبراير 26 2022',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/images/chance_icon.svg',
                          width: 14,
                          colorFilter:
                              ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        ),
                        Text(
                          'فرص عمل',
                          style: TextStyle(color: Colors.white),
                        ),
                        SvgPicture.asset(
                          'assets/images/seen_icon.svg',
                          width: 14,
                          colorFilter:
                              ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        ),
                        Text(
                          '1.945 مشاهدة',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'كيف بدأنا',
              textAlign: TextAlign.right,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Text(
                  '''تمنع محدودية الوصول إلى السوق العالمية العديد من 
الحرفيات الفلسطينيات الموهوبات
  .من بناء مهن من خلال مهاراتهن في الخياطة والتطريز 
والتصميم 
أنشأت مركز الحرفيين ”كأس الطفل الكامل“ في الزبابدة ، 
وهي قرية في شمال الضفة الغربية ، بهدف خلق فرصة
اقتصادية دائمة للمجتمعات ا  كثر تهميشًا في
  الضفة الغربية:اللاجئات والفقيرات 

على مدار السنوات ا  ربع الماضية ، أنشأت المنظمة 
الصغيرة غير الربحية خطي إنتاج للسوق ا  مريكية: كأس 
الطفل الكامل   لعاب ا  طفال ، وأحذية وإكسسوارات 
دارزة تطريز .المطرزة

تمنع محدودية الوصول إلى السوق العالمية العديد 
من الحرفيات الفلسطينيات الموهوبات .من بناء مهن
  من خلال مهاراتهن في الخياطة والتطريز والتصميم''',
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
