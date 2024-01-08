import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/svg/docdoc_logo.png'),
        SizedBox(
          width: 8.h,
        ),
        Text(
          'Docdoc',
          style: TextStyles.font24BlackBold,
        )
      ],
    );
  }
}
