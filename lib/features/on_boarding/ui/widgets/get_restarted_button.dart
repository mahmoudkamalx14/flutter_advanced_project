import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/theme/colors.dart';

import '../../../../core/theme/styles.dart';

class GetRestartedButton extends StatelessWidget {
  const GetRestartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        minimumSize: MaterialStateProperty.all(const Size(311, 52)),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16mainBlueBold,
      ),
    );
  }
}
