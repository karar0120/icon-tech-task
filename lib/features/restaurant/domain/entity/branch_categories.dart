class RestaurantBranchesCategories {
  final List<DataCategories> restaurantBranchesCategories;
  RestaurantBranchesCategories({required this.restaurantBranchesCategories});
}

class DataCategories {
  final int id;
  final String image;
  final TitleCategories title;
  DataCategories({
    required this.id,
    required this.image,
    required this.title,
  });
}

class TitleCategories {
  final String en;
  final String ar;
  TitleCategories({
    required this.ar,
    required this.en,
  });
}
