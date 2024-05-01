import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/strings_manger.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/styles.dart';
import 'package:icon_tech_task/core/widget/app_text_button.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/products.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.dataProduct,
  });

  final DataProduct dataProduct;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppTextButton(
          buttonWidth: AppSize.s50.w,
          textStyle: TextStyles.font13BlueRegular,
          buttonHeight: AppSize.s70.h,
          onPressed: () {},
          buttonContent: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
        horizontalSpace(AppSize.s20),
        Expanded(
          child: AppTextButton(
              buttonHeight: AppSize.s70.h,
              buttonContent: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppString.addToCart,
                    style: TextStyles.font16WhiteSemiBold,
                  ),
                  Text(
                    "${dataProduct.price} ${AppString.rs}",
                    style: TextStyles.font16WhiteSemiBold,
                  ),
                ],
              ),
              textStyle: TextStyles.font16WhiteSemiBold,
              onPressed: () {}),
        ),
      ],
    );
  }
}
