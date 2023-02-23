import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLineStyle2,),
        //컬러만 다른것으로 적용시키고 싶을 때 copyWith color로 다시 색상을 불러오면된다.
        InkWell(
          onTap: () {
            print("ontap View all");
          },
          child: Text(
            smallText,
            style: Styles.textStyle
                .copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
