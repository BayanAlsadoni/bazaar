import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors/custom_colors.dart';

class PaymentMethodWidget extends StatelessWidget {
  String imageName;
  PaymentMethodWidget(this.imageName);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: CustomColors.redColor),
          borderRadius: BorderRadius.circular(10)),
      child: SvgPicture.asset(
        'assets/images/$imageName',
        colorFilter: ColorFilter.mode(CustomColors.redColor, BlendMode.srcIn),
      ),
    );
  }
}
