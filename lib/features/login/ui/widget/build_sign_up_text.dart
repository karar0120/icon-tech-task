import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';

import '../../../../core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: AppString.donotHaveAnAccount,
            style: TextStyles.font16WhiteSemiBold
                .copyWith(color: ColorsManager.lightGray),
          ),
          TextSpan(
            text: AppString.signUp,
            style: TextStyles.font16WhiteSemiBold
                .copyWith(color: ColorsManager.dark),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
