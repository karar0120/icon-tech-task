import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';

void showCustomBottomSheet(BuildContext context,
    {required Widget bottomSheetContent,
    required double bottomSheetHeight,
    Color? backgroundColor}) {
  showModalBottomSheet(
      backgroundColor: backgroundColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SizedBox(
          height: bottomSheetHeight.sh,
          child: Stack(
            children: [
              Positioned(
                right: 0.4.sw,
                left: 0.4.sw,
                top: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 5,
                  decoration: BoxDecoration(
                      color: ColorsManager.grayLight,
                      borderRadius: BorderRadius.circular(AppSize.s20.r)),
                ),
              ),
              bottomSheetContent
            ],
          ),
        );
      });
}
