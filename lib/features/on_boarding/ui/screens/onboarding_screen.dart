import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/doc_logo_and_name.dart';
import '../widgets/doctor_image_and_text.dart';
import '../widgets/get_restarted_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 30.h),
              const DoctorImageAndText(),
              SizedBox(height: 18.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font13GrayRegluar,
                        textAlign: TextAlign.center),
                    SizedBox(height: 30.h),
                    const GetRestartedButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
