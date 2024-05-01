import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_tech_task/features/restaurant/presentation/controllers/get_restaurant_product_cubit/get_restaurant_product_cubit.dart';

class RestaurantProduct extends StatelessWidget {
  const RestaurantProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurantProduct = context.read<GetRestaurantProductCubit>();
    return BlocBuilder<GetRestaurantProductCubit, GetRestaurantProductState>(
      builder: (context, state) {
        return Scaffold(
            body: restaurantProduct.products.isNotEmpty
                ? Center(
                    child: Text(
                        "data${restaurantProduct.products.first.title.en}"),
                  )
                : const Center(child: CircularProgressIndicator()));
      },
    );
  }
}
