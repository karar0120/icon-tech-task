import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_tech_task/core/helper/extensions.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/routing/routes.dart';
import 'package:icon_tech_task/core/widget/loader.dart';
import 'package:icon_tech_task/core/widget/no_record_found.dart';
import 'package:icon_tech_task/features/restaurant/presentation/controllers/get_restaurant_product_cubit/get_restaurant_product_cubit.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/products.dart';

class ProductsItems extends StatelessWidget {
  const ProductsItems({super.key});

  @override
  Widget build(BuildContext context) {
    final productsItems = context.read<GetRestaurantProductCubit>();
    return BlocBuilder<GetRestaurantProductCubit, GetRestaurantProductState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
            childAspectRatio: 1 / 1.50,
            children: List.generate(productsItems.products.length + 1, (index) {
              if (index < productsItems.products.length) {
                return InkWell(
                  child: Products(product: productsItems.products[index]),
                  onTap: () {
                    context.pushNamed(Routes.getProductsDetailsScreen,
                        arguments: productsItems.products[index]);
                  },
                );
              } else {
                if (productsItems.isScroll == false && productsItems.hasMore) {
                  return const LoaderWidget(
                    sizeLoader: 0.05,
                  );
                } else {
                  if (productsItems.products.isEmpty) {
                    return const NoRecoredsFound();
                  } else {
                    return const SizedBox();
                  }
                }
              }
            }),
          ),
        );
      },
    );
  }
}
