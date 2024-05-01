import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/theming/styles.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      color: ColorsManager.mainGreen,
      height: AppSize.s120.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: AppSize.s30,
          ),
          horizontalSpace(AppSize.s12),
          Text(
            AppString.login,
            style: TextStyles.font16WhiteMedium.copyWith(fontSize: 24.sp),
          ),
        ],
      ),
    );
  }
}
