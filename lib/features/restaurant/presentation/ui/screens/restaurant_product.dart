import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_tech_task/core/helper/spacing.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/widget/app_bar.dart';
import 'package:icon_tech_task/features/restaurant/presentation/controllers/get_restaurant_product_cubit/get_restaurant_product_cubit.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/categories.dart';
import 'package:icon_tech_task/features/restaurant/presentation/ui/widgets/products_items.dart';

class RestaurantProduct extends StatefulWidget {
  final int brunchId;
  const RestaurantProduct({super.key, required this.brunchId});

  @override
  State<RestaurantProduct> createState() => _RestaurantProductState();
}

class _RestaurantProductState extends State<RestaurantProduct> {
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    bind();
  }

  bind() {
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        context
            .read<GetRestaurantProductCubit>()
            .emitGetProductsState(branchId: widget.brunchId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final restaurantProduct = context.read<GetRestaurantProductCubit>();

    return BlocBuilder<GetRestaurantProductCubit, GetRestaurantProductState>(
      builder: (context, state) {
        return DefaultTabController(
          length: restaurantProduct.restaurantBranchesDate.length,
          child: Scaffold(
              appBar: GeneralAppBar(
                title: Text(
                    restaurantProduct.selectedCategoriesItem?.title.en ?? ""),
                centerTitle: true,
              ),
              body: restaurantProduct.restaurantBranchesDate.isNotEmpty
                  ? ListView(
                      controller: scrollController,
                      padding: EdgeInsets.zero,
                      children: [
                        verticalSpace(AppSize.s12),
                        TapBarViews(
                          brunchId: widget.brunchId,
                        ),
                        verticalSpace(AppSize.s12),
                        const ProductsItems()
                      ],
                    )
                  : const Center(child: CircularProgressIndicator())),
        );
      },
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
