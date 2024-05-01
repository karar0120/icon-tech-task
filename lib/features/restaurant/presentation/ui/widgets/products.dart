import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/theming/color.dart';
import 'package:icon_tech_task/core/theming/styles.dart';
import 'package:icon_tech_task/core/widget/image_holder.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/products.dart';

class Products extends StatelessWidget {
  final DataProduct product;
  const Products({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      color: ColorsManager.gray,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppSize.s28.r)),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p15),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedImage(imageUrl: product.images.first.image),
              verticalSpace(AppSize.s12),
              Text(
                product.title.en,
                style: TextStyles.font16WhiteSemiBold
                    .copyWith(color: ColorsManager.mainGreen),
              ),
              verticalSpace(AppSize.s12),
              Text(
                product.description.en,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyles.font14BlueSemiBold
                    .copyWith(color: ColorsManager.dark),
              ),
              verticalSpace(AppSize.s12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${product.price} RS",
                    style: TextStyles.font14BlueSemiBold
                        .copyWith(color: ColorsManager.dark),
                  ),
                  const Icon(Icons.favorite),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
