import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/theming/styles.dart';

class ProductQuantity extends StatelessWidget {
  const ProductQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: AppSize.s50.w,
          height: AppSize.s50.h,
          decoration: BoxDecoration(
              color: ColorsManager.mainGreen,
              borderRadius: BorderRadius.circular(AppSize.s12.r),
              border: Border.all(color: ColorsManager.mainGreen)),
          child: const Center(
            child: Icon(
              Icons.minimize,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          width: AppSize.s50.w,
          height: AppSize.s50.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s12.r),
              border: Border.all(color: ColorsManager.mainGreen)),
          child: Center(
              child: Text(
            '1',
            style: TextStyles.font24BlackBold,
          )),
        ),
        Container(
          width: AppSize.s50.w,
          height: AppSize.s50.h,
          decoration: BoxDecoration(
              color: ColorsManager.mainGreen,
              borderRadius: BorderRadius.circular(AppSize.s12.r),
              border: Border.all(color: ColorsManager.mainGreen)),
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
