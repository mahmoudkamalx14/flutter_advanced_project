import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class AlreadyHaveAnAccountYet extends StatelessWidget {
  const AlreadyHaveAnAccountYet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet?',
            style: TextStyles.font13textBlackMedium,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13mainBlueRegular,
            onEnter: (event) {},
          ),
        ],
      ),
    );
  }
}
