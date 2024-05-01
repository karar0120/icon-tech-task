import 'package:flutter/material.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';

import '../../../../core/theming/styles.dart';

class BuildTextLogin extends StatelessWidget {
  const BuildTextLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        verticalSpace(AppSize.s70),
        Text(
          AppString.welcomeBack,
          style: TextStyles.font24BlueBold,
        ),
        verticalSpace(AppSize.s30),
      ],
    );
  }
}
